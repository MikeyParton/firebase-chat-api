class FirebaseToken
  CONFIG =  File.open('firebase.json').read
  KEY = OpenSSL::PKey::RSA.new(JSON.parse(CONFIG)["private_key"])
  SERVICE_ACCOUNT_EMAIL = JSON.parse(CONFIG)["client_email"]

  attr_reader :token

  def initialize(id)
    now_seconds = Time.now.to_i
    payload = {
      iss: SERVICE_ACCOUNT_EMAIL,
      sub: SERVICE_ACCOUNT_EMAIL,
      aud: "https://identitytoolkit.googleapis.com/google.identity.identitytoolkit.v1.IdentityToolkit",
      iat: now_seconds,
      exp: now_seconds+(60*60), # Maximum expiration time is one hour
      uid: id,
      claims: {
        # Here we can put special auth claims such as
        # admin: true
        # which are available in firebase for implementing rules
      }
    }

    @token = JWT.encode(payload, KEY, "RS256")
  end
end
