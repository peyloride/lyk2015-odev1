class Product < ActiveRecord::Base

  belongs_to :user

  validates :title, presence:  true,  length: { minimum:  5, maximum:  30}
  validates :description, presence: true, length: {maximum: 300}
  validates :price, numericality: { greater_than_or_equal_to: 0}
end
