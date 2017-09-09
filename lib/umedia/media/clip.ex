defmodule Umedia.Media.Clip do
  @moduledoc false
  use Ecto.Schema
  import Ecto.Changeset
  alias Umedia.{Media, Brain}
  alias Umedia.Media.Clip

  schema "clips" do
    field :clip_number, :integer
    field :clip_tags, {:array, :string}
    field :scene_id, :id
    field :episode_id, :id
    field :show_id, :id
    many_to_many :clip_characters, Brain.Character, join_through: "clip_to_character"
    many_to_many :clip_locations, Brain.Location, join_through: "clip_to_location"
    timestamps()
  end

  @doc false
  def changeset(%Clip{} = clip, attrs) do
    clip
    |> cast(attrs, [:clip_tags, :clip_number])
    |> validate_required([:clip_tags, :clip_number])
  end
end
