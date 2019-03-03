class ProductImage < ApplicationRecord
  belongs_to :product, optional: true

  validates :product_image, presence: true
  mount_uploader :product_image, ImageUploader
end
