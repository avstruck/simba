class Piece < ActiveRecord::Base
	belongs_to :gallery
	has_one :purchase

	belongs_to :artist, class_name: "User"
	belongs_to :art_owner, class_name: "User"
	belongs_to :copyright_owner, class_name: "User"

	attr_accessible :image
  	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
