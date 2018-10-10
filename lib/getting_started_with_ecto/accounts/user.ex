defmodule GettingStartedWithEcto.Accounts.User do
  use Ecto.Schema
  alias GettingStartedWithEcto.Accounts.Credential

  schema "users" do
    field(:name, :string)
    field(:age, :integer)
    has_one(:credential, Credential)

    timestamps()
  end
end
