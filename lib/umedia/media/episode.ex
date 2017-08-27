defmodule Umedia.Media.Episode do
  use Ecto.Schema
  import Ecto.Changeset
  alias Umedia.Media.Episode


  schema "episodes" do
    field :episode_number, :integer
    field :episode_path_to_raw, :string
    field :episode_season, :integer
    field :episode_title, :string
    field :original_airdate, :naive_datetime
    field :show_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Episode{} = episode, attrs) do
    episode
    |> cast(attrs, [:episode_title, :episode_number, :episode_season, :episode_path_to_raw, :original_airdate])
    |> validate_required([:episode_title, :episode_number, :episode_season, :episode_path_to_raw, :original_airdate])
  end
end
