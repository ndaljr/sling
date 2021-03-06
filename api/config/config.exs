# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :sling, ecto_repos: [Sling.Repo]

# Configures the endpoint
config :sling, SlingWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+U64C0NQBG1/oqDIQVraVBIcO22rX+0dJ7mbM3ZWoDoj87iQ6IIcdB15aNKkdAHc",
  render_errors: [view: SlingWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Sling.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

config(:sling, Sling.Guardian, issuer: "sling")

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
