defmodule Umedia.Media.Franchise do
  use Ecto.Schema
  import Ecto.Changeset
  alias Umedia.Media.Franchise


  schema "franchises" do
    field :franchise_name, :string

    timestamps()
  end

  @doc false
  def changeset(%Franchise{} = franchise, attrs) do
    franchise
    |> cast(attrs, [:franchise_name])
    |> validate_required([:franchise_name])
  end
end
