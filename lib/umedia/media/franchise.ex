defmodule Umedia.Media.Franchise do
  use Ecto.Schema
  import Ecto.Changeset
  alias Umedia.Media.{Franchise, Show}

  schema "franchises" do
    field :franchise_name, :string
    has_many :franchise_shows, Show
    has_many :franchise_episodes, through: [:franchise_shows, :show_episodes]
    timestamps()
  end

  @doc false
  def changeset(%Franchise{} = franchise, attrs) do
    franchise
    |> cast(attrs, [:franchise_name])
    |> validate_required([:franchise_name])
  end
end
