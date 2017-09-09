defmodule Umedia.Media.Credit do
  use Ecto.Schema
  import Ecto.Changeset
  alias Umedia.Media.Credit

  schema "credits" do
    field :effort, :string
    field :person_id, :id
    field :episode_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Credit{} = credit, attrs) do
    credit
    |> cast(attrs, [:effort])
    |> validate_required([:effort])
  end
end
