class Product < ApplicationRecord

  has_many :product_images, dependent: :destroy
  belongs_to :user

  validates :name, presence: true, length: {maximum: 40}
  validates :product_description, presence: true, length: {maximum: 1000}
  validates :category1, presence: true
  validates :condition, presence: true
  validates :postage, presence: true
  validates :ship_from, presence: true
  validates :shipping_date, presence: true
  validates :price, presence: true

  mount_uploader :image, ImageUploader
end
