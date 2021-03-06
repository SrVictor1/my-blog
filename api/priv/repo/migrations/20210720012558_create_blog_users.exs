defmodule Api.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :email, :string
      add :posts_number, :integer
      add :password, :string

      timestamps()
    end

    create unique_index(:users, [:email])
  end
end
