defmodule GettingStartedWithEcto.ChallengesTest do
  use GettingStartedWithEcto.DataCase
  use ExUnit.Case

  alias GettingStartedWithEcto.{Challenges, Challenges.Challenge}

  describe "challenges" do
    def create_challenge() do
      challenge = %{
        title: "Best Challenge Ever",
        description: "An example description",
        level: "easy"
      }

      case Challenges.create_challenge(challenge) do
        {:ok, record} -> record
        _ -> nil
      end
    end

    test "creating a challenge" do
      challenge = %{
        title: "Best Challenge Ever",
        description: "An example description",
        level: "easy"
      }

      assert {:ok, %Challenge{} = created_challenge} = Challenges.create_challenge(challenge)

      assert created_challenge.title == challenge.title
      assert created_challenge.level == challenge.level
      assert created_challenge.description == challenge.description
    end

    test "getting a challenge" do
      challenge = create_challenge()
      assert %Challenge{} = challenge_record = Challenges.get_challenge_by_id(challenge.id)
    end

    test "updating a challenge" do
      challenge = create_challenge()
      updates = %{title: "Updated title"}

      assert {:ok, %Challenge{} = updated_challenge} =
               Challenges.update_challenge(challenge, updates)

      assert updated_challenge.title == updates.title
    end

    test "deleting a challenge by id" do
      challenge = create_challenge()
      assert {:ok, %Challenge{} = deleted_challenge} = Challenges.delete_challenge(challenge.id)
    end

    test "deleting a challenge by changeset/struct" do
      challenge = create_challenge()
      assert {:ok, %Challenge{} = deleted_challenge} = Challenges.delete_challenge(challenge)
    end
  end
end
