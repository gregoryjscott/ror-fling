# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_herwiggy_session',
  :secret      => '11d88075375db27d6f45d06bed041b8ceeafe1a37cfd47560009dcd84f684870c32d918f3c7795d11af6487860395a85dd8812c47601b683e9731d30003948c1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
