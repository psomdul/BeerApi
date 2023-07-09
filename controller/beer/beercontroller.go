package beercontroller

import (
	"github.com/gin-gonic/gin"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
	"context"
	"beerapi/model"
	// "path/filepath"
	// "database/sql"
	// "encoding/json"
	"fmt"
	"log"
	"time"
	"net/http"
	"strconv"
	// "strings"
	"beerapi/orm"
	// "beerapi/mongodb"
	// "os"
	// "github.com/gorilla/mux"
	// _ "github.com/lib/pq"
)

type Beerstruct struct {
	ID          int       `json:"beer_id"`
	Name        string    `json:"beer_name"`
	TypeID      int       `json:"type_id"`
	Description string    `json:"description"`
	CreatedDate time.Time `json:"created_date"`
	UpdatedDate time.Time `json:"updated_date"`
	Image       string    `json:"image"`
}



func GET(c *gin.Context){
	page, _ := strconv.Atoi(c.Query("page"))     // Page number
	pageSize, _ := strconv.Atoi(c.Query("size")) // Number of items per page
	nameFilter := c.Query("name")                // name filter

	// Validate and set default values for pagination parameters
	if page < 1 {
		page = 1
	}
	if pageSize < 1 {
		pageSize = 10
	}

	tableName := "beers"

	// SQL query to fetch Data with optional name filter
	query := orm.Db.Table(tableName)
	if nameFilter != "" {
		query = query.Where("beer_name LIKE ?", "%"+nameFilter+"%")
	}
	// Count the total number of records (for pagination)
	var totalRecords int64
	query.Count(&totalRecords)
	// Perform pagination
	offset := (page - 1) * pageSize
	query = query.Offset(offset).Limit(pageSize)

	// Execute query and retrieve 
	var beers []Beerstruct
	query.Find(&beers)
	response := map[string]interface{}{
		"page":           page,
		"size":           pageSize,
		"total_records":  totalRecords,
		"total_pages":    (totalRecords + int64(pageSize) - 1) / int64(pageSize),
		"current_records": len(beers),
		"data":           beers,
	}

	c.JSON(http.StatusOK, response)
}

func Insert(c *gin.Context){
	// Parse JSON request body into  struct
	var beer Beerstruct
	fmt.Println(c)
	if err := c.ShouldBindJSON(&beer); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	


	// Set created and updated dates
	// beer.Image = "testst.jpg"
	beer.CreatedDate = time.Now()
	beer.UpdatedDate = time.Now()
	var BeerExits orm.Beers
	tableName := "beers"


	orm.Db.Table(tableName).Where("name = ?", beer.Name).First(&BeerExits)
	if BeerExits.ID > 0{
		c.JSON(http.StatusOK,gin.H{"status" : "failed","message":"duplicated Beer",})
		return
	 }	
	 
	
	result :=  orm.Db.Table(tableName).Create(&beer)
	if result.Error != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": result.Error.Error()})
		return
	}
	 

	

	
	// Insert the beer object into MySQL
	
	client, err := mongo.Connect(context.Background(), options.Client().ApplyURI(fmt.Sprintf("mongodb://%s:%d", "localhost", 27017)))
	if err != nil {
		log.Fatal(err)
	}
	defer client.Disconnect(context.Background())

	collection := client.Database("BeerCollection").Collection("Beer_logs")
	logEntry := bson.M{
	"action":    "create",
	"Beer_id":   beer.ID,
	"Beer_name": beer.Name,
	"timestamp": time.Now(),
	}

	_, err = collection.InsertOne(context.Background(), logEntry)
	if err != nil {
		log.Fatal(err)
	}

	c.JSON(http.StatusOK, gin.H{"message": "Beer created successfully","t":BeerExits.ID,"name":beer.Name})
}

func Update(c *gin.Context){
	var beerInp Beerstruct
	var BeerExits model.Beers
	if err := c.ShouldBindJSON(&BeerExits); err != nil {
		c.JSON(http.StatusBadRequest,gin.H{"error": err.Error()})
		return
	}

	orm.Db.First(&BeerExits,beerInp.ID)
	
    // c.JSON(http.StatusOK, gin.H{"message": "Beer updated successfully","t":BeerExits.ID,"name":beerInp.Name})
    // return
    tableName := "beers"
    orm.Db.Table(tableName).Where("name =?", beerInp.Name).First(&BeerExits)
	// BeerExits.beer_name = beerInp.Name
	// model..beer_name = "test"
	
	// BeerExits.DeletedAt = time.Now()



}

func Delete(c *gin.Context){
	beer_id := c.Param("id")
	
	var BeerExits orm.Beers
	tableName := "beers"
	// SQL query to fetch Data with optional name filter
	orm.Db.Table(tableName).Where("id = ?", beer_id).First(&BeerExits)
	if BeerExits.ID <= 0{
		c.JSON(http.StatusOK,gin.H{"status" : "failed","message":"can not find this id,please try again",})
		return
	 }	

	// result :=  orm.Db.Table(tableName).Delete(&beer)
	orm.Db.First(&BeerExits,beer_id)
	orm.Db.Delete(&BeerExits)

	 client, err := mongo.Connect(context.Background(), options.Client().ApplyURI(fmt.Sprintf("mongodb://%s:%d", "localhost", 27017)))
	 if err != nil {
		 log.Fatal(err)
	 }
	 defer client.Disconnect(context.Background())
 
	 collection := client.Database("BeerCollection").Collection("Beer_logs")
	 logEntry := bson.M{
	 "action":    "deleted",
	 "Beer_id":   beer_id,
	//  "Beer_name": beer.Name,
	 "timestamp": time.Now(),
	 }
 
	 _, err = collection.InsertOne(context.Background(), logEntry)
	 if err != nil {
		 log.Fatal(err)
	 }
	 c.JSON(http.StatusOK, gin.H{"message": "Beer Deleted successfull","Id":BeerExits.ID})
}