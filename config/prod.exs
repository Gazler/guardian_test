use Mix.Config

# ## SSL Support
#
# To get SSL working, you will need to set:
#
#     https: [port: 443,
#             keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#             certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables point to a file on
# disk for the key and cert.

config :phoenix, GuardianTest.Router,
  url: [host: "example.com"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "DSsDg1lca9y36aRJ7slOa9UJir0yfAzT7Sip/aUHArl50iBOhWvgLVWn9FPPKLSHxEUxQYpJDQGJvZo9rMBjag=="

config :logger,
  level: :info
