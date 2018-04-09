defmodule Libguru.LibraryTest do
  use Libguru.ModelCase

  alias Libguru.Library

  @valid_attrs %{name: "some name"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Library.changeset(%Library{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Library.changeset(%Library{}, @invalid_attrs)
    refute changeset.valid?
  end
end
