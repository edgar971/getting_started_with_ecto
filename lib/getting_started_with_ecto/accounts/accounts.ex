defmodule GettingStartedWithEcto.Accounts do
  alias GettingStartedWithEcto.Accounts.{User, Credential}
  alias GettingStartedWithEcto.Repo

  def create_user_with_credentials(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Ecto.Changeset.cast_assoc(:credentials, with: &Credential.changeset/2)
    |> Repo.insert()
  end
end
