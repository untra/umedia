defmodule Umedia.Repo.Migrations.CreateLocations do
  use Ecto.Migration

  def change do
    create table(:locations) do
      add :name, :string
      add :description, :string
      add :ml_interface_fk, :string
      add :real_place_id, references(:real_places, on_delete: :nothing)

      timestamps()
    end

    create index(:locations, [:real_place_id])
  end
end
