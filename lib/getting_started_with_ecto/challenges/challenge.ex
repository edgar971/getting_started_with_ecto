defmodule GettingStartedWithEcto.Challenges.Challenge do
  use Ecto.Schema
  import Ecto.Changeset
  alias GettingStartedWithEcto.Challenges.Solution

  schema "challenges" do
    field(:description, :string)
    field(:level, :string)
    field(:title, :string)
    has_many(:solutions, Solution)

    timestamps()
  end

  @doc false
  def changeset(challenge, attrs) do
    challenge
    |> cast(attrs, [:title, :description, :level])
    |> validate_required([:title, :description, :level])
  end
end
