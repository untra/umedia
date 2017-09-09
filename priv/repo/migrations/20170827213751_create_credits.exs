defmodule Umedia.Repo.Migrations.CreateCredits do
  use Ecto.Migration

  def change do
    create table(:credits) do
      add :effort, :string
      add :person_id, references(:real_people, on_delete: :nothing)
      add :episode_id, references(:episodes, on_delete: :nothing)

      timestamps()
    end

    create index(:credits, [:person_id])
    create index(:credits, [:episode_id])
  end
end
