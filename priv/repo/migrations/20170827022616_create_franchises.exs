defmodule Umedia.Repo.Migrations.CreateFranchises do
  use Ecto.Migration

  def change do
    create table(:franchises) do
      add :franchise_name, :string

      timestamps()
    end

  end
end
