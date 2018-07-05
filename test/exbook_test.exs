defmodule ExbookTest do
  use ExUnit.Case
  doctest Exbook

  test "greets the world" do
    assert Exbook.hello() == :world
  end
end
