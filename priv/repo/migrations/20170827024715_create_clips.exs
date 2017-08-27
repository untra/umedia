defmodule Umedia.Repo.Migrations.CreateClips do
  use Ecto.Migration

  def change do
    create table(:clips) do
      add :clip_tags, {:array, :string}
      add :clip_number, :integer
      add :scene_id, references(:scenes, on_delete: :nothing)
      add :episode_id, references(:episodes, on_delete: :nothing)
      add :show_id, references(:shows, on_delete: :nothing)

      timestamps()
    end

    create index(:clips, [:scene_id])
    create index(:clips, [:episode_id])
    create index(:clips, [:show_id])
  end
end
