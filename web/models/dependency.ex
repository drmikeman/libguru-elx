defmodule Libguru.Dependency do
  use Libguru.Web, :model

  schema "dependencies" do
    field :library_id, :integer
    field :repository_id, :integer

    belongs_to :library, Library, define_field: false
    belongs_to :repository, Repository, define_field: false

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:library_id, :repository_id])
    |> validate_required([:library_id, :repository_id])
  end
end
