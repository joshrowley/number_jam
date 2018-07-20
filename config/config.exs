# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :number_jam,
  ecto_repos: [NumberJam.Repo]

# Configures the endpoint
config :number_jam, NumberJamWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DZzp8dQoHLVccTX2s75sU+G/s67apCGyWzIL4NuNFDfEWCGo9IDfopk+CNeSfKKU",
  render_errors: [view: NumberJamWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NumberJam.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
