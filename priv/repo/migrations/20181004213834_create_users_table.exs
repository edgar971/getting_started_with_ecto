defmodule GettingStartedWithEcto.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add(:name, :string, size: 100)

      timestamps()
    end
  end
end
