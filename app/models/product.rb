class Product < ApplicationRecord
  belongs_to :shop
  belongs_to :secondary_category
  has_many :stocks
  has_many :carts
  has_many :users, through: :carts
end
