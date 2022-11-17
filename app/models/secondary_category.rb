class SecondaryCategory < ApplicationRecord
  has_one :primary_category
end
