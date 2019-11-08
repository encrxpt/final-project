class Status < ApplicationRecord
  has_many :product

  validates :status, presence: true
end
