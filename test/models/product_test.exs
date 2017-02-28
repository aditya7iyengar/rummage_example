defmodule RummageExample.ProductTest do
  use RummageExample.ModelCase

  alias RummageExample.Product

  @valid_attrs %{category: "some content", name: "some content", quantity: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Product.changeset(%Product{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Product.changeset(%Product{}, @invalid_attrs)
    refute changeset.valid?
  end
end
