defmodule Libguru.Repository do
  use Libguru.Web, :model

  schema "repositories" do
    field :github_id, :integer
    field :name, :string
    field :url, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:github_id, :name, :url])
    |> validate_required([:github_id, :name, :url])
  end
end
