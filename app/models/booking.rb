class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :business
  has_one :business_user, through: :business
  has_many :conversations
end
