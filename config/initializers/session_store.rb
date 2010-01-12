# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_recortables_3d_session',
  :secret      => 'c790c39093d3e6a6cc3aaf37e39c394af6dbca5c56a29109561c60f6974445f5a77dee0d1deb880113a7f695e0c70881c3471cf4ba8b05e802a44d9747c20e35'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
