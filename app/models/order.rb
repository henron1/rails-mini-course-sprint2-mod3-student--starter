class Order < ApplicationRecord
  has_many :order_products
  has_many :products through :order_products #creates method called products
  belongs_to :customer
  
  def shippable?
    status != "shipped" && products.count >= 1
  end

  def ship
    shippable? && update(status: "shipped")
  end
end
