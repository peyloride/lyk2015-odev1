class User < ActiveRecord::Base

  has_many :products

  validates :username , presence: true, length: { minimum: 6, maximum: 20 }
  validates :email, presence:true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
  validates :age, presence:  true, numericality: { greater_than: 15, only_integer: true}
  validates :city, presence: true
end
