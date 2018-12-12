defmodule GettingStartedWithEcto.Accounts.CredentialTest do
  use GettingStartedWithEcto.DataCase
  use ExUnit.Case

  alias GettingStartedWithEcto.Accounts.Credential

  describe "credentials changeset" do
    @valid_attrs %{
      email: "alan@me.com",
      password_hash: "ElixirIsGreat",
      user: %{name: "Alan", age: 20}
    }
    @invalid_password_attrs %{
      email: "alan@me.com",
      password_hash: "JavaIsGreat",
      user: %{name: "Alan", age: 20}
    }

    test "valid" do
      %{valid?: is_valid} =
        %Credential{}
        |> Credential.changeset(@valid_attrs)

      assert is_valid == true
    end

    test "invalid" do
      %{valid?: is_valid} =
        %Credential{}
        |> Credential.changeset(@invalid_password_attrs)

      assert is_valid == false
    end
  end
end
