# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_multiple_image_upload_session',
  :secret      => 'd92a4436f865a583bbc5d167258af367f6332e735c58554bd50e558bdf85b0f7005600aad55750d0cde5acd1d71c11a7934e4b73021a5434f90e9f7a0b5ae58f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
