class Soldproduct < ApplicationRecord
  belongs_to :product

  validates :price, presence: true
end
