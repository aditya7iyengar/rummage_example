# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rummage_example,
  ecto_repos: [RummageExample.Repo]

# Configures the endpoint
config :rummage_example, RummageExample.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rszOLd3AWJR0YWL4+tDp1zwX6IU8G3JTuKqppUScXTLp852i84+Yx44nbMlzd6Xo",
  render_errors: [view: RummageExample.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RummageExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
