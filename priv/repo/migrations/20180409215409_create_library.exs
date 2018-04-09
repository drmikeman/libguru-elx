defmodule Libguru.Repo.Migrations.CreateLibrary do
  use Ecto.Migration

  def change do
    create table(:libraries) do
      add :name, :string

      timestamps()
    end
  end
end
