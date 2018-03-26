class FirebaseToken
  TOKEN_KEY = OpenSSL::PKey::RSA.new(ENV["FIREBASE_PRIVATE_KEY"])
  CONFIG = {
    type: "service_account",
    project_id: ENV["FIREBASE_PROJECT_ID"],
    private_key_id: ENV["FIREBASE_PRIVATE_KEY_ID"],
    private_key: ENV["FIREBASE_PRIVATE_KEY"],
    client_email: ENV["FIREBASE_CLIENT_EMAIL"],
    client_id: ENV["FIREBASE_CLIENT_ID"],
    auth_uri: "https://accounts.google.com/o/oauth2/auth",
    token_uri: "https://accounts.google.com/o/oauth2/token",
    auth_provider_x509_cert_url: "https://www.googleapis.com/oauth2/v1/certs",
    client_x509_cert_url: ENV["FIREBASE_CLIENT_X509_CERT_URL"]
  }.to_json

  def self.generate(id)
    now_seconds = Time.now.to_i
    payload = {
      iss: ENV["FIREBASE_CLIENT_EMAIL"],
      sub: ENV["FIREBASE_CLIENT_EMAIL"],
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

    JWT.encode(payload, TOKEN_KEY, "RS256")
  end
end
