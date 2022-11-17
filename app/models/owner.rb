class Owner < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_one :shop, dependent: :destroy
  has_many_attached :images

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
