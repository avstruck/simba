class User < ActiveRecord::Base
  has_one :gallery
  has_many :pieces, through: :gallery

  has_many :buy_purchases, class_name: "Purchase", foreign_key: :initiator_id
  has_many :sell_purchases, class_name: "Purchase", foreign_key: :acceptor_id

  validates :email, presence: true, uniqueness: true
  #validates :username, presence: true, uniqueness: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
