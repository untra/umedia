use Mix.Config

# Configure your database
config :umedia, Umedia.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "umedia_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
