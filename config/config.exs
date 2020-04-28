# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :uploader_api_aws,
  ecto_repos: [UploaderApiAws.Repo]

# Configures the endpoint
config :uploader_api_aws, UploaderApiAwsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YwDeWAi9ODfL1gSCV0NseRIuDtBb+AapLdegPfjznk+XN74JOCECUGYVPe9RuM3E",
  render_errors: [view: UploaderApiAwsWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: UploaderApiAws.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "DwB7dk8H"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
