json.id conversation.id
json.users do
  json.partial! 'api/shared/user', collection: conversation.users, as: :user
end
