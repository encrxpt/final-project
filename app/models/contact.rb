class Contact < ApplicationRecord

  validates :name, :phone, :email, :description, presence: true
end
