class Product < ActiveRecord::Base

  belongs_to :user

  def vat_included_price
    self.price += price*0.18
  end

  # def vat_included_price=(price)
  #   self.price.to_f += price.to_f*0.18
  # end

  validates :title, presence:  true,  length: { minimum:  5, maximum:  30}
  validates :description, presence: true, length: {maximum: 300}
  validates :price, numericality: { greater_than_or_equal_to: 0}
end
