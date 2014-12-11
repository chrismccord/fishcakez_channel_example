use Mix.Config

config :channel_example, ChannelExample.Endpoint,
  http: [port: System.get_env("PORT") || 4001]
