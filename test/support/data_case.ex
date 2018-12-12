defmodule GettingStartedWithEcto.DataCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      alias GettingStartedWithEcto.Repo

      import Ecto
      import Ecto.Query
      import GettingStartedWithEcto.DataCase
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(GettingStartedWithEcto.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(GettingStartedWithEcto.Repo, {:shared, self()})
    end

    :ok
  end
end
