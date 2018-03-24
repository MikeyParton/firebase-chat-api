class User < ApplicationRecord
  has_many :bookings
  belongs_to :business
  has_many :business_bookings, through: :business
end
