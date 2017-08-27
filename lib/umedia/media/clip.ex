defmodule Umedia.Media.Clip do
  use Ecto.Schema
  import Ecto.Changeset
  alias Umedia.Media.Clip


  schema "clips" do
    field :clip_number, :integer
    field :clip_tags, {:array, :string}
    field :scene_id, :id
    field :episode_id, :id
    field :show_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Clip{} = clip, attrs) do
    clip
    |> cast(attrs, [:clip_tags, :clip_number])
    |> validate_required([:clip_tags, :clip_number])
  end
end
