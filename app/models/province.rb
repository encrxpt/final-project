class Province < ApplicationRecord
  has_many :customer
  
  validates :name, :gst, :pst, :hst, presence: true
end
