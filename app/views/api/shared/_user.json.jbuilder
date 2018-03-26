json.(user, :id, :name, :avatar)
json.firebase_token FirebaseToken.generate(user.id)

if user.business
  json.business do
    json.name user.business.name
  end
end
