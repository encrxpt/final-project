class Product < ApplicationRecord
  belongs_to :category
  belongs_to :status
  has_one_attached :image

  validates :name, :price, :category, presence: true


end
