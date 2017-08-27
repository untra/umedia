defmodule Umedia.Media.Scene do
  use Ecto.Schema
  import Ecto.Changeset
  alias Umedia.Media.Scene


  schema "scenes" do
    field :scene_number, :integer
    field :scene_tags, {:array, :string}
    field :episode_id, :id
    field :show_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Scene{} = scene, attrs) do
    scene
    |> cast(attrs, [:scene_tags, :scene_number])
    |> validate_required([:scene_tags, :scene_number])
  end
end
