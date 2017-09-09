defmodule Umedia.Media.Scene do
  @moduledoc false
  use Ecto.Schema
  import Ecto.Changeset
  alias Umedia.{Media, Brain}
  alias Umedia.Media.Scene

  schema "scenes" do
    field :scene_number, :integer
    field :scene_tags, {:array, :string}
    field :episode_id, :id
    field :show_id, :id
    has_many :scene_clips, Media.Clip
    has_many :scene_characters, through: [:scene_clips, :clip_characters]
    has_many :scene_locations, through: [:scene_clips, :clip_locations]
    timestamps()
  end

  @doc false
  def changeset(%Scene{} = scene, attrs) do
    scene
    |> cast(attrs, [:scene_tags, :scene_number])
    |> validate_required([:scene_tags, :scene_number])
  end
end
