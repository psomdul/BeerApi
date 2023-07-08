package main

import (
	_"fmt"
	BeerController "beerapi/controller/beer"
	// beercon ""
	"beerapi/orm"
	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
	// "gorm.io/gorm"
)

func main() {
	orm.Dbcon()
  r := gin.Default()
  r.Use(cors.Default())
//   r.GET("/health", func(c *gin.Context) {
//     c.JSON(http.StatusOK, gin.H{
//       "message": "ok",
//     })
//   })
  r.GET("/beer",BeerController.GET)
  r.POST("/beer",BeerController.Insert)
  r.PUT("/beer/:id",BeerController.Update)
  r.DELETE("/beer/:id",BeerController.Delete)
  r.Run("localhost:8089") // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")
}