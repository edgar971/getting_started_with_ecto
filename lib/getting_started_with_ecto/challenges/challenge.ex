defmodule GettingStartedWithEcto.Challenges.Challenge do
  use Ecto.Schema
  alias GettingStartedWithEcto.Challenges.Solution
  
  schema "challenges" do
    field(:description, :string)
    field(:level, :string)
    field(:title, :string)
    has_many(:solutions, Solution)

    timestamps()
  end
end