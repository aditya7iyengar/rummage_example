defmodule RummageExample.Product do
  use RummageExample.Web, :model
  use Rummage.Ecto, repo: RummageExample.Repo, per_page: 2, only: [:search, :sort]

  schema "products" do
    field :name, :string
    field :category, :string
    field :quantity, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :category, :quantity])
    |> validate_required([:name, :category, :quantity])
  end
end
