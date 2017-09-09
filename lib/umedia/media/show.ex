defmodule Umedia.Media.Show do
  use Ecto.Schema
  import Ecto.Changeset
  alias Umedia.Media
  alias Umedia.Media.Show

  schema "shows" do
    field :show_name, :string
    field :franchise_id, :id
    has_many :show_episodes, Media.Episode
    has_many :show_scenes, through: [:show_episodes, :episode_scenes]
    timestamps()
  end

  @doc false
  def changeset(%Show{} = show, attrs) do
    show
    |> cast(attrs, [:show_name])
    |> validate_required([:show_name])
  end
end
