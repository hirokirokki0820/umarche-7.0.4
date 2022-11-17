class PrimaryCategory < ApplicationRecord
  has_many :secondary_categories
end
