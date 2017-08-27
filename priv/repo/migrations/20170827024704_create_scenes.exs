defmodule Umedia.Repo.Migrations.CreateScenes do
  use Ecto.Migration

  def change do
    create table(:scenes) do
      add :scene_tags, {:array, :string}
      add :scene_number, :integer
      add :episode_id, references(:episodes, on_delete: :nothing)
      add :show_id, references(:shows, on_delete: :nothing)

      timestamps()
    end

    create index(:scenes, [:episode_id])
    create index(:scenes, [:show_id])
  end
end
