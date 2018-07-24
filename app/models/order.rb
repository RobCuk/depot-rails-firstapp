class Order < ApplicationRecord
  # Order can hold multiple items and can destroy them. 
  has_many :line_items, dependent: :destroy
  # This enum sets the pay type to have 3 options and this gets fed to React.
  enum pay_type: {
    'Check' => 0,
    'Credit Card' => 1,
    'Purchase order' => 2
  }
  # The user MUST input these attributes otherwise the order does not go through.
  validates :name, :address, :email, presence:true
  # The pay type must be one of the keys to work.
  validates :pay_type, inclusion: pay_types.keys
  # Orders get filled with items from the cart.
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
  

end
