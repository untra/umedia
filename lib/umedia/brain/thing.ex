defmodule Umedia.Brain.Thing do
  use Ecto.Schema
  import Ecto.Changeset
  alias Umedia.Brain.Thing


  schema "things" do
    field :description, :string
    field :emoji_identifier, :string
    field :ml_interface_fk, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Thing{} = thing, attrs) do
    thing
    |> cast(attrs, [:emoji_identifier, :name, :description, :ml_interface_fk])
    |> validate_required([:emoji_identifier, :name, :description, :ml_interface_fk])
  end
end
