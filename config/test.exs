use Mix.Config

# Configure your database
config :uploader_api_aws, UploaderApiAws.Repo,
  username: "postgres",
  password: "postgres",
  database: "uploader_api_aws_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :uploader_api_aws, UploaderApiAwsWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
