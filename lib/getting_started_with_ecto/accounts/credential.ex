defmodule GettingStartedWithEcto.Accounts.Credential do
  use Ecto.Schema
  alias GettingStartedWithEcto.Accounts.User

  schema "users" do
    field(:email, :string)
    field(:password_hash, :integer)
    belongs_to(:user, User)

    timestamps()
  end
end
