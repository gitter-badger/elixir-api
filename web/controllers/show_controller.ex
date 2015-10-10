defmodule WolfpubApiElixir.ShowController do
  use WolfpubApiElixir.Web, :controller
  alias WolfpubApiElixir.Repo
  alias WolfpubApiElixir.Show

  plug :action

  def index(conn, _params) do
    shows = Repo.all(Show)
    render conn, shows: shows
  end
end

