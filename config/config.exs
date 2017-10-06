# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ruby_china,
  ecto_repos: [RubyChina.Repo]

# Configures the endpoint
config :ruby_china, RubyChinaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "erGCfOMqKnCeC1rjHK2MXHJTDgGy1dZZY4rudsWTHGJCRbfOoUrD9bxfh0jlVC/J",
  render_errors: [view: RubyChinaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RubyChina.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
