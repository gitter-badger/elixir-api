use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :wolfpub_api_elixir, WolfpubApiElixir.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :wolfpub_api_elixir, WolfpubApiElixir.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "dain",
  password: "*Divine_Love112233",
  database: "wolfpub_api_elixir_test",
  size: 1 # Use a single connection for transactional tests
