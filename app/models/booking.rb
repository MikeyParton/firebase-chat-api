class Booking < ApplicationRecord
  include FirebaseHelper

  belongs_to :user
  has_one :business
  has_one :business_user, through: :business

  def create_conversation
    firebase.push('bookings', {
      name: name,
      userId: user_id
    })
  end
end
