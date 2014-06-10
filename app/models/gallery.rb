class Gallery < ActiveRecord::Base
	belongs_to :user
	has_many :pieces
end
