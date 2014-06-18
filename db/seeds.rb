# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


	# @images = asset_path.each do |i|
	# 	image_tag asset_path i
	# end


image_array = ["stream.jpg", "arch_sketch.jpg", "bride.jpg", "court_house.jpg", "cover-st-anthonys-church.jpg", "dark_clouds.jpg", "sunflower.jpg", "trees.jpg", "white_horses.jpg", "elephant.jpg", "desert.jpg", "gazebo.jpg", "eye.jpg", "Howard_Fogg_Art_Train_Painting_SHHC008(1).jpg", "white_horses.jpg", "lakehouse.jpg", "farm_house.jpg", "sunset.jpg", "waves.jpg", "watermelon.jpg"]

image_array.each do |name|
  Piece.create!(image_url: name, artist_id: 10, art_owner_id: 10, title: name, genre: "modern",
   original_value: 10.0, number_prints: 0, art_description: "Very pretty painting", print_value: 80)
end