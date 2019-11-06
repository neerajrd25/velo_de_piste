defmodule VeloDePisteWeb.BookView do
  use VeloDePisteWeb, :view
  alias VeloDePisteWeb.BookView

  def render("index.json", %{books: books}) do
    %{data: render_many(books, BookView, "book.json")}
  end

  def render("show.json", %{book: book}) do
    %{data: render_one(book, BookView, "book.json")}
  end

  def render("book.json", %{book: book}) do
    %{id: book.id,
      title: book.title,
      price: book.price,
      publisher: book.publisher,
      edition: book.edition,
      code: book.code}
  end
end
