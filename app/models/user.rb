class User < ActiveRecord::Base
  has_one :gallery
  has_many :art_pieces, :class_name => "Piece", :foreign_key => :artist_id
  has_many :owned_pieces, :class_name => "Piece", :foreign_key => :art_owner_id
  has_many :copyrights, :class_name => "Piece", :foreign_key => :copyright_owner_id


  has_many :buy_purchases, class_name: "Purchase", foreign_key: :initiator_id
  has_many :sell_purchases, class_name: "Purchase", foreign_key: :acceptor_id

  #validates :username, presence: true, uniqueness: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def gallery_value
  	value = 0
    return 0 if self.owned_pieces.count == 0
  	self.owned_pieces.each { |p|
    	value += p.original_value
    }
    value
    # self.pieces.inject(&:+)
  end

end



# def piglatin(string)
# 	string[0] +"ay"
# end

# class String
# 	def piglatin
# 		self[0] + "ay"
# 	end
# end