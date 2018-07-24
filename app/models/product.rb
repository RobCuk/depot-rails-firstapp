class Product < ApplicationRecord
  # Product can have multiple line items, can be a part of multiple orders. 
  has_many :line_items
  has_many :orders, through: :line_items
  # Before the product is destroyed, it check that a different item does not reference this specific product.
  before_destroy :ensure_not_referenced_by_any_line_item
  # Product needs to have these attributes and the title must be unique. The image must be jpg, png or gif and the price must be higher than 0.01
  validates :title, :description, :image_url, presence: true
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with: /\.(gif|jpg|png)\Z/i,
    message: 'Must be a URL for GIF, JPG or PNG images.'
  }
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }

  private

  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'Line Items Present!')
      throw :abort
    end
  end
end
