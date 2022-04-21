class Flat < ApplicationRecord
  validates :name, presence: true
  validates :price_per_night, presence: true
end
