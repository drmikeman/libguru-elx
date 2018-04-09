defmodule Libguru.Library do
  use Libguru.Web, :model

  schema "libraries" do
    field :name, :string

    has_many :dependencies, Dependency

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
  end
end
