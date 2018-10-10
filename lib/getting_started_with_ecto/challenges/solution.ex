defmodule GettingStartedWithEcto.Challenges.Solution do
  use Ecto.Schema
  alias GettingStartedWithEcto.Challenges.Challenge
  alias GettingStartedWithEcto.Accounts.User
  
  schema "solutions" do
    field(:code, :string)
    field(:description, :string)
    belongs_to(:user, User)
    belongs_to(:challenge, Challenge)

    timestamps()
  end
end