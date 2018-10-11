defmodule GettingStartedWithEctoTest do
  use GettingStartedWithEcto.DataCase
  
  use ExUnit.Case
  doctest GettingStartedWithEcto

  test "greets the world" do
    assert GettingStartedWithEcto.hello() == :world
  end
end
