# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_legalninja_session',
  :secret      => 'cda332e4f784fb48236c9bf3d3f91ffdb0330dc5986d3ebc3ca0c9dfd2439300f8866521aa59ec8a0c653e0f179573b971373b7fc71f6056a6408412cc6d4c16'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
