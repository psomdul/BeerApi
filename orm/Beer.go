package orm

import (
	// "time"
	
	"gorm.io/gorm"
)
type Beers struct {
	gorm.Model
	beer_name  			string
	type_id 			int
	description 		string
	created_at 		string
	updated_at		string
	img_file			string
  }