defmodule GettingStartedWithEcto.Repo do
  use Ecto.Repo,
    otp_app: :getting_started_with_ecto,
    adapter: Ecto.Adapters.Postgres
end
