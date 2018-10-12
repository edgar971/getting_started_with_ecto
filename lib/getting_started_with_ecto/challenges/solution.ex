defmodule GettingStartedWithEcto.Challenges.Solution do
  use Ecto.Schema
  import Ecto.Changeset
  alias GettingStartedWithEcto.Challenges.Challenge
  alias GettingStartedWithEcto.Accounts.User

  schema "solutions" do
    field(:code, :string)
    field(:description, :string)
    belongs_to(:user, User)
    belongs_to(:challenge, Challenge)

    timestamps()
  end

  @doc false
  def changeset(solution, attrs) do
    solution
    |> cast(attrs, [:code, :description, :user_id, :challenge_id])
    |> validate_required([:code, :description, :user_id, :challenge_id])
  end
end
