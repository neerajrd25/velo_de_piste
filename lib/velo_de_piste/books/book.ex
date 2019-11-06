defmodule VeloDePiste.Books.Book do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    field :code, :string
    field :edition, :string
    field :price, :integer
    field :publisher, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs, [:title, :price, :publisher, :edition, :code])
    |> validate_required([:title, :price, :publisher, :edition, :code])
  end
end
