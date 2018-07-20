defmodule NumberJamWeb.NumberController do
  use NumberJamWeb, :controller
  require IEx

  def new(conn, _params) do
    render conn, "new.html"
  end

  def create(conn, %{"number" => number}) do
    {:ok, %{body: body }} = HTTPoison.get("http://numbersapi.com/#{number}")
    render conn, "show.html", number: number, fact: body
  end

  def index(conn, _params) do
    render conn, "index.html"
  end
end
