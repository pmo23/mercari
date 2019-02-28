class ProductImage < ApplicationRecord
  belongs_to :product

  validates :product_image, presence: true
end
