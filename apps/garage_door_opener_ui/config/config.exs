use Mix.Config


config :garage_door_opener_ui, GarageDoorOpenerUI.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9w9MI64d1L8mjw+tzTmS3qgJTJqYNGJ1dNfn4S/Zm6BbKAmo2vAyVW7CgfI3CpII",
  render_errors: [view: GarageDoorOpenerUI.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GarageDoorOpenerUI.PubSub,
           adapter: Phoenix.PubSub.PG2]


config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]


import_config "#{Mix.env}.exs"
