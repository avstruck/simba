class Purchase < ActiveRecord::Base
	belongs_to :initator, class_name: "User"
	belongs_to :acceptor, class_name: "User"
	belongs_to :piece


	def charge(token)
		
		
	end
end
