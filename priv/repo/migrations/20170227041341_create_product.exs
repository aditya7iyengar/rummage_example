defmodule RummageExample.Repo.Migrations.CreateProduct do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :category, :string
      add :quantity, :integer

      timestamps()
    end

  end
end
