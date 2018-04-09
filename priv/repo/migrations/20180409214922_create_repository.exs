defmodule Libguru.Repo.Migrations.CreateRepository do
  use Ecto.Migration

  def change do
    create table(:repositories) do
      add :github_id, :integer
      add :name, :string
      add :url, :string

      timestamps()
    end
  end
end
