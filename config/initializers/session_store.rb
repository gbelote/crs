# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_crs_session',
  :secret      => '73b498475aa996b55dc8cb3d1d70543a2e3755e877f98472bf72417e1ecd6b6b9481b51044fd680cad57691a38bb82cab9a3556f8cbc57c72d66d1f2b0306494'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
