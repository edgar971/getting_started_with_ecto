defmodule GettingStartedWithEcto.AccountsTest do
  use GettingStartedWithEcto.DataCase
  use ExUnit.Case

  alias GettingStartedWithEcto.{Accounts, Accounts.User}

  describe "accounts" do
    test "creating a user with credentials" do
      user_with_credentials = %{
        name: "Alan",
        age: 22,
        credentials: %{email: "test@me.com", password_hash: "ElixirIsAwesome"}
      }

      assert {:ok, %User{} = created_user} =
               Accounts.create_user_with_credentials(user_with_credentials)

      assert created_user.name == user_with_credentials.name
      assert created_user.age == user_with_credentials.age
    end
  end
end
