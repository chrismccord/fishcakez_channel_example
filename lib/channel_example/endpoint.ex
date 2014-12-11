defmodule ChannelExample.Endpoint do
  use Phoenix.Endpoint, otp_app: :channel_example

  plug Plug.Static,
    at: "/", from: :channel_example

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_channel_example_key",
    signing_salt: "2XO/rJYz",
    encryption_salt: "l9ysaYrD"

  plug :router, ChannelExample.Router
end
