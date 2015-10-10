defmodule WolfpubApiElixir.Repo.Migrations.CreateShows do
  use Ecto.Migration

  def up do
    create table(:shows) do
      add :title
      add :description, :text

      timestamps
    end
  end

  def down do
    drop table(:shows)
  end
end
