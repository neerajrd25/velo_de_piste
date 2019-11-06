defmodule VeloDePiste.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string
      add :price, :integer
      add :publisher, :string
      add :edition, :string
      add :code, :string

      timestamps()
    end

  end
end
