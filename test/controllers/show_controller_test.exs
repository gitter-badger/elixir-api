defmodule WolfpubApiElixir.ShowControllerTest do
  use ExUnit.Case, async: false
  use Plug.Test

  alias WolfpubApiElixir.Show
  alias WolfpubApiElixir.Repo
  alias Ecto.Adapters.SQL

  setup do
    SQL.begin_test_transaction(Repo)

    on_exit fn ->
      SQL.rollback_test_transaction(Repo)
    end
  end

  test "/index returns a list of shows" do
    shows_as_json =
      %Show{title: "Affirmation Nation with Bob Ducca", description: "Lorum ipsum."}
      |> Repo.insert
      |> List.wrap
      |> Poison.encode!

    response = conn(:get, '/api/shows') |> send_request

    assert response.status == 200
    assert response.resp_body == shows_as_json
  end

  def send_request(conn) do
    conn
    |> put_private(:plug_skip_csrf_protection, true)
    |> WolfpubApiElixir.Endpoint.call([])
  end

end
