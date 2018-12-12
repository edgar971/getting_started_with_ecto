defmodule GettingStartedWithEcto.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias GettingStartedWithEcto.Accounts.Credential

  schema "users" do
    field(:name, :string)
    field(:age, :integer)
    has_one(:credentials, Credential)

    timestamps()
  end

  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :age])
    |> validate_required([:name], message: "Full name is required.", trim: true)
    |> validate_inclusion(:age, 0..120, message: "You need to be human.")
  end
end
