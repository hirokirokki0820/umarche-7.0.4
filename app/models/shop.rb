class Shop < ApplicationRecord
  belongs_to :owner
  has_many :products, dependent: :destroy
end
