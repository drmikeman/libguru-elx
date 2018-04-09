defmodule Libguru.Repo.Migrations.CreateDependency do
  use Ecto.Migration

  def change do
    create table(:dependencies) do
      add :library_id, :integer
      add :repository_id, :integer

      timestamps()
    end
  end
end
