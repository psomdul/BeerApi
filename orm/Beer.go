package orm

import (
	// "time"

	"gorm.io/gorm"
)
type Beer struct {
	gorm.Model
	beer_name  			string
	type_id 			int
	description 		string
	created_date 		string
	updated_date		string
	img_file			string
  }