defmodule Umedia.Media.Show do
  use Ecto.Schema
  import Ecto.Changeset
  alias Umedia.Media.Show


  schema "shows" do
    field :show_name, :string
    field :franchise_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Show{} = show, attrs) do
    show
    |> cast(attrs, [:show_name])
    |> validate_required([:show_name])
  end
end
