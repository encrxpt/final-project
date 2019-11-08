class Product < ApplicationRecord
  belongs_to :category
  belongs_to :status

  validates :name, :price, :image, :category, :status, presence: true


end
