defmodule RubyChina.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias RubyChina.Accounts.User


  schema "users" do
    field :email, :string
    field :name, :string
    field :password, :string
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:username, :name, :email, :password])
    |> validate_required([:username, :name, :email, :password])
  end
end
