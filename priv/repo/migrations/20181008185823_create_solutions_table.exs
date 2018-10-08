defmodule GettingStartedWithEcto.Repo.Migrations.CreateSolutionsTable do
  use Ecto.Migration

  def change do
    create table(:solutions) do
      add(:code, :string, size: 6144)
      add(:description, :string, size: 2048)
      add(:user_id, references(:users, on_delete: :delete_all), null: false)
      add(:challenge_id, references(:challenges, on_delete: :delete_all), null: false)

      timestamps()
    end

    create(index(:solutions, [:user_id]))
    create(index(:solutions, [:challenge_id]))
  end
end
