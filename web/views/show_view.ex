defmodule WolfpubApiElixir.ShowView do
  use WolfpubApiElixir.Web, :view

  def render("index.json", %{shows: shows}) do
    shows
  end
end
