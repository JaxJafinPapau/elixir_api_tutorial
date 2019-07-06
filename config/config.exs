# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :api_tutorial,
  ecto_repos: [ApiTutorial.Repo]

# Configures the endpoint
config :api_tutorial, ApiTutorialWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gboSN+0pv+kz7m+Yoa4UxStTePhmw+4nSP7YNG3G1sbwhrxag7Ron3S9k/riIE9Q",
  render_errors: [view: ApiTutorialWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: ApiTutorial.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
