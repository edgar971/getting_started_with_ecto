defmodule GettingStartedWithEcto.Accounts.UserTest do
  use GettingStartedWithEcto.DataCase
  use ExUnit.Case

  alias GettingStartedWithEcto.Accounts.User
  alias GettingStartedWithEcto.Repo

  describe "users" do
    @valid_attrs %{name: "Alan", age: 25}
    test "creating users" do
      assert {:ok, %User{} = created_user} =
               %User{}
               |> User.changeset(@valid_attrs)
               |> Repo.insert()

      assert created_user.name == @valid_attrs.name
      assert created_user.age == @valid_attrs.age
    end
  end
end
