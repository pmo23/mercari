class Order < ApplicationRecord

  has_many :users, through: :products

end
