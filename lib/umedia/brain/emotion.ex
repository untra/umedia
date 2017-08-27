defmodule Umedia.Brain.Emotion do
  use Ecto.Schema
  import Ecto.Changeset
  alias Umedia.Brain.Emotion


  schema "emotions" do
    field :description, :string
    field :emoji_identifier, :string
    field :ml_interface_fk, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Emotion{} = emotion, attrs) do
    emotion
    |> cast(attrs, [:emoji_identifier, :name, :description, :ml_interface_fk])
    |> validate_required([:emoji_identifier, :name, :description, :ml_interface_fk])
  end
end
