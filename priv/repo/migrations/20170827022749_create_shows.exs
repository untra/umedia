defmodule Umedia.Repo.Migrations.CreateShows do
  use Ecto.Migration

  def change do
    create table(:shows) do
      add :show_name, :string
      add :franchise_id, references(:franchises, on_delete: :nothing)

      timestamps()
    end

    create index(:shows, [:franchise_id])
  end
end
