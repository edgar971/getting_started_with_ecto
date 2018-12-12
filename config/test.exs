use Mix.Config

config :getting_started_with_ecto, GettingStartedWithEcto.Repo,
  adapter: Ecto.Adapters.Postgres,
  pool: Ecto.Adapters.SQL.Sandbox,
  database: "getting_started_with_ecto_repo",
  hostname: "localhost"
