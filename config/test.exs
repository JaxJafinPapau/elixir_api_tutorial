use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :api_tutorial, ApiTutorialWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :api_tutorial, ApiTutorial.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "jaxjafinpapau",
  password: "",
  database: "api_tutorial_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
