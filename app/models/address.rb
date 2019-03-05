class Address < ApplicationRecord
  belongs_to :user

  validates :zip_code, presence: true
  validates :prefecture, presence: true
  validates :city, presence: true
  validates :address_line1, presence: true
  validates :phone_number, presence: true
end
