use Mix.Config

# Configure your database
config :umedia, Umedia.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("DATA_DB_USER"),
  password: System.get_env("DATA_DB_PASS"),
  hostname: System.get_env("DATA_DB_HOST"),
  database: "hello_test",
  pool: Ecto.Adapters.SQL.Sandbox
