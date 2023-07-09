package model

import (
	"gorm.io/gorm"
)

type Beers struct {
	gorm.Model
	BeerName     string `gorm:"column:name"`
	TypeID       int    `gorm:"column:type_id"`
	Description  string `gorm:"column:description"`
	CreatedDate  string `gorm:"column:created_at"`
	UpdatedDate  string `gorm:"column:updated_at"`
	ImgFile      string `gorm:"column:Image"`
}
