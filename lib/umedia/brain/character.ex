defmodule Umedia.Brain.Character do
  use Ecto.Schema
  import Ecto.Changeset
  alias Umedia.Media.Clip
  alias Umedia.Brain.Character

  schema "characters" do
    field :description, :string
    field :ml_interface_fk, :string
    field :name, :string
    field :real_person_id, :id
    many_to_many :character_clips, Media.Clip, join_through: "clip_to_character"
    timestamps()
  end

  @doc false
  def changeset(%Character{} = character, attrs) do
    character
    |> cast(attrs, [:name, :description, :ml_interface_fk])
    |> validate_required([:name, :description, :ml_interface_fk])
  end
end
