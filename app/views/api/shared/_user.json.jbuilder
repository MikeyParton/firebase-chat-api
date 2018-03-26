json.(user, :id, :name)
json.firebase_token FirebaseToken.generate(user.id)

if user.business
  json.business do
    json.name user.business.name
  end
end
