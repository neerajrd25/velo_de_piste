use Mix.Config

# Configure your database
config :velo_de_piste, VeloDePiste.Repo,
  username: "postgres",
  password: "postgres",
  database: "velo_de_piste_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :velo_de_piste, VeloDePisteWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
