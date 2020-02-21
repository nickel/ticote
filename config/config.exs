# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ticote,
  ecto_repos: [Ticote.Repo]

# Configures the endpoint
config :ticote, TicoteWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BpaNe5/E0NoUfhLlYpEMnk8Af1iw17rR0SQ4XcpA0U+kWWDOHn0bhnq0wy6FsnJs",
  render_errors: [view: TicoteWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ticote.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
