json.(booking, :id, :name)

json.conversations do
  json.partial! 'api/shared/conversation', collection: booking.conversations, as: :conversation
end
