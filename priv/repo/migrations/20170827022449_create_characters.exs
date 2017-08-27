defmodule Umedia.Repo.Migrations.CreateCharacters do
  use Ecto.Migration

  def change do
    create table(:characters) do
      add :name, :string
      add :description, :string
      add :ml_interface_fk, :string
      add :real_person_id, references(:real_people, on_delete: :nothing)

      timestamps()
    end

    create index(:characters, [:real_person_id])
  end
end
