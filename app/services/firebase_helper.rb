module FirebaseHelper
  KEY = private_key_json_string = File.open('firebase.json').read
  BASE_URI = 'https://toy-chat.firebaseio.com'

  def firebase
    Firebase::Client.new(BASE_URI, KEY)
  end
end
