defmodule Umedia.Repo.Migrations.CreateRealPeople do
  use Ecto.Migration

  def change do
    create table(:real_people) do
      add :name, :string
      add :description, :string
      add :ml_interface_fk, :string

      timestamps()
    end

  end
end
