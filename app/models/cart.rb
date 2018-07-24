class Cart < ApplicationRecord
  # Cart can hold and destroy multiple items.
  has_many :line_items, dependent: :destroy
  # Adds the product to the cart.
  def add_product(product)
    current_item = line_items.find_by(product_id: product.id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(product_id: product.id)
    end
    current_item
  end
  # Sums up the total price of all the line items as they are added.
  def total_price
    line_items.to_a.sum(&:total_price)
  end
end
