defmodule GettingStartedWithEcto.Accounts.Credential do
  use Ecto.Schema
  import Ecto.Changeset
  alias GettingStartedWithEcto.Accounts.User

  schema "credentials" do
    field(:email, :string)
    field(:password_hash, :string)
    belongs_to(:user, User)

    timestamps()
  end

  def changeset(credentials, attrs) do
    credentials
    |> cast(attrs, [:email, :password_hash])
    |> cast_assoc(:user)
    |> validate_required([:email, :password_hash])
    |> validate_password()
    |> validate_format(:email, ~r/@/)
    |> unique_constraint(:email)
  end

  defp validate_password(changeset) do
    isValid =
      changeset
      |> get_change(:password_hash)
      |> String.contains?("Elixir")

    case isValid do
      true -> changeset
      false -> password_invalid(changeset)
    end
  end

  defp password_invalid(changeset) do
    add_error(changeset, :password_hash, "Invalid password, missing secret word.")
  end
end
