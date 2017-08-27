defmodule Umedia.Brain.Real_Person do
  use Ecto.Schema
  import Ecto.Changeset
  alias Umedia.Brain.Real_Person


  schema "real_people" do
    field :description, :string
    field :ml_interface_fk, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Real_Person{} = real__person, attrs) do
    real__person
    |> cast(attrs, [:name, :description, :ml_interface_fk])
    |> validate_required([:name, :description, :ml_interface_fk])
  end
end
