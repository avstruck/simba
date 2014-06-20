class Piece < ActiveRecord::Base
	has_many :prints

	belongs_to :artist, class_name: "User"
	belongs_to :art_owner, class_name: "User"
	belongs_to :copyright_owner, class_name: "User"

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
    validates :avatar, :attachment_presence => true


	def self.search(query)
		if query
			Piece.where("title = LIKE'%#{query}%'")
		else
			Piece.all
		end
	end
	
end
