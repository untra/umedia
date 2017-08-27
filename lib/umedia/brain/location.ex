defmodule Umedia.Brain.Location do
  use Ecto.Schema
  import Ecto.Changeset
  alias Umedia.Brain.Location


  schema "locations" do
    field :description, :string
    field :ml_interface_fk, :string
    field :name, :string
    field :real_place_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Location{} = location, attrs) do
    location
    |> cast(attrs, [:name, :description, :ml_interface_fk])
    |> validate_required([:name, :description, :ml_interface_fk])
  end
end
