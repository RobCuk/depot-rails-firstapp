class LineItem < ApplicationRecord
  # Item can optionally belong to a order or a product but MUST belong to the cart.
  belongs_to :order, optional: true
  belongs_to :product, optional: true
  belongs_to :cart

 # Sums up the price of the product if there is multiple iterations of it. 
  def total_price
    product.price * quantity
  end
end
