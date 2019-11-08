class Product < ApplicationRecord
  belongs_to :category
  belongs_to :status

  validates :name, :price, :category, :status, presence: true


end
