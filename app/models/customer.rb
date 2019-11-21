class Customer < ApplicationRecord
  belongs_to :province

  validates :name, :email, :phone, :address, :province, presence: true
  validates :name, :email, uniqueness: true
end
