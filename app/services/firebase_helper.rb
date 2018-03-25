module FirebaseHelper
  require "jwt"

  CONFIG =  File.open('firebase.json').read
  BASE_URI = 'https://toy-chat.firebaseio.com'

  def firebase
    Firebase::Client.new(BASE_URI, CONFIG)
  end

  def firebase_ref
    raise "You must define a firebase_ref method in class #{self.class.name}"
  end

  def firebase_data
    raise "You must define a firebase_data method in class #{self.class.name}"
  end

  def register_with_firebase
    firebase.set(firebase_ref, firebase_data)
  end
end
