defmodule VeloDePisteWeb.Router do
  use VeloDePisteWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", VeloDePisteWeb do
    pipe_through :api
    resources "/books", BookController, except: [:new, :edit]

  end
end
