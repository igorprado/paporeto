# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Paporeto::Application.config.secret_key_base = 'cbee1f1fed0754a29b78ea4923c22a34852058ca43499e73ce44ed8fa0f0ed61deae07ff2bd0a83cbaf9aba6a4acb30a5371c708163d2b531e12348eb05a8c8a'
