# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Haiti_session',
  :secret      => '6bb0e95ca5e175065d30b271b408d8cbec3d8c70cfeef8b53c7ea94b050841a35e9cfdfa9f7e73321111130e915cb1fbaaf17847c2649db6a1dbdc8e1f1a8a5c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
