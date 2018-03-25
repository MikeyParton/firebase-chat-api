class User < ApplicationRecord
  include FirebaseHelper

  has_many :bookings
  has_one :business
  has_many :business_bookings, through: :business

  def firebase_ref
    "users/#{id}"
  end

  def firebase_data
    { id: id, name: name, conversations: [] }
  end
end
