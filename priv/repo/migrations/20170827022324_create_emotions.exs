defmodule Umedia.Repo.Migrations.CreateEmotions do
  use Ecto.Migration

  def change do
    create table(:emotions) do
      add :emoji_identifier, :string
      add :name, :string
      add :description, :string
      add :ml_interface_fk, :string

      timestamps()
    end

  end
end
