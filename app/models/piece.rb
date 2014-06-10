class Piece < ActiveRecord::Base
	belongs_to :gallery
	has_one :purchase
end
