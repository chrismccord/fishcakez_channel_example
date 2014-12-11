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

config :channel_example, ChannelExample.Endpoint,
  url: [host: "example.com"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "poBs7GUjMJyqR7FJqJBj6VW1DK9gk9npo+LCaI2AL8WKNO3MZkN1QQPIrcBgsfWR"

config :logger,
  level: :info
