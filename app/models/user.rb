class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :address
  has_one :creditcard
  has_many :comments
  has_many :likes
  has_many :todos
  has_many :bought_items, foreign_key: "buyer_id", class_name: "Item"
  has_many :selling_items, foreign_key: "seller_id", class_name: "Item"
  has_many :sns_credentials


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,             presence: true, uniqueness: true
  validates :nickname,          presence: true
  validates :password,          presence: true
  validates :first_name,        presence: true
  validates :last_name,         presence: true
  validates :first_name_kana,   presence: true,format: {with: /\A[ぁ-んァ-ヶー－]+\z/}
  validates :last_name_kana,    presence: true,format: {with: /\A[ぁ-んァ-ヶー－]+\z/}
  validates :birth_year,  	    presence: true, numericality: true
  validates :birth_month, 	    presence: true, numericality: true
  validates :birth_day,   	    presence: true, numericality: true
  validates :phone_number,      presence: true, uniqueness: true, numericality: true,format: {with: /\A\d{10,11}\z/}
    
end
