class Conversation < ApplicationRecord
  belongs_to :booking
  has_many :conversation_users
  has_many :users, through: :conversation_users
end
