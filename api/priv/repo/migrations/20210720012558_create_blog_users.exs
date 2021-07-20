defmodule Api.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :email, :string
      add :posts_number, :integer
      add :password, :string

      timestamps()
    end

    create unique_index(:users, [:email])
  end
end
