# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_erector_example_session',
  :secret      => 'e758cb38132c0014176f85957837080cb3eedbd6d7cbd23931d60af5ab3f26ab74359e22cdf624da885d662c8c4fddf28a4bd8bbffaa4dce1ab868aaab8533d7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
