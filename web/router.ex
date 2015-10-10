defmodule WolfpubApiElixir.Router do
  use WolfpubApiElixir.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", WolfpubApiElixir do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/api", WolfpubApiElixir do
    pipe_through :api

    resources "/shows", ShowController
  end
end
