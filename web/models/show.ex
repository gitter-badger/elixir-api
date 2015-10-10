defmodule WolfpubApiElixir.Show do
  use Ecto.Model

  schema "shows" do
    field :title
    field :description

    timestamps
  end
end

