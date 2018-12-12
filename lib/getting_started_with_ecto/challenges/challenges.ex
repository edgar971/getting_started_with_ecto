defmodule GettingStartedWithEcto.Challenges do
  alias GettingStartedWithEcto.Challenges.Challenge
  alias GettingStartedWithEcto.Repo

  def create_challenge(attrs \\ %{}) do
    %Challenge{}
    |> Challenge.changeset(attrs)
    |> Repo.insert()
  end

  def get_challenge_by_id(id) do
    Challenge
    |> Repo.get(id)
  end

  def update_challenge(%Challenge{} = challenge, attrs \\ %{}) do
    challenge
    |> Challenge.changeset(attrs)
    |> Repo.update()
  end

  def delete_challenge(%Challenge{} = challenge) do
    challenge
    |> Repo.delete()
  end

  def delete_challenge(id) when is_integer(id) do
    %Challenge{id: id}
    |> Repo.delete()
  end
end
