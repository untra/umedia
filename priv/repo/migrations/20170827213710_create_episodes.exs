defmodule Umedia.Repo.Migrations.CreateEpisodes do
  use Ecto.Migration

  def change do
    create table(:episodes) do
      add :episode_title, :string
      add :episode_number, :integer
      add :episode_season, :integer
      add :episode_path_to_raw, :string
      add :original_airdate, :naive_datetime
      add :show_id, references(:shows, on_delete: :nothing)

      timestamps()
    end

    create index(:episodes, [:show_id])
  end
end
