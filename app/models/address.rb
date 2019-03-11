class Address < ApplicationRecord
  belongs_to :user

  validates :zip_code, format: { with:/\A\d{3}[-]\d{4}\Z/}, presence: true
  validates :prefecture, presence: true
  validates :city, presence: true
  validates :address_line1, presence: true
  validates :phone_number, format: { with:/\A\d{10}$|^\d{11}\Z/}, presence: true
end
