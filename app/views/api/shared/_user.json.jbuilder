json.(user, :id, :name)
json.firebase_token FirebaseToken.new(user.id).token

if user.business
  json.business do
    json.name user.business.name
  end
end
