defmodule GettingStartedWithEcto.Repo.Migrations.CreateChallengesTable do
  use Ecto.Migration

  def change do
    create table(:challanges) do
      add(:title, :string)
      add(:description, :string, size: 2048)
      add(:level, :string)

      timestamps()
    end
  end
end
