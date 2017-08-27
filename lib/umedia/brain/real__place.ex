defmodule Umedia.Brain.Real_Place do
  use Ecto.Schema
  import Ecto.Changeset
  alias Umedia.Brain.Real_Place


  schema "real_places" do
    field :description, :string
    field :ml_interface_fk, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Real_Place{} = real__place, attrs) do
    real__place
    |> cast(attrs, [:name, :description, :ml_interface_fk])
    |> validate_required([:name, :description, :ml_interface_fk])
  end
end
