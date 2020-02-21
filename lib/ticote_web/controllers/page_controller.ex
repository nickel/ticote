defmodule TicoteWeb.PageController do
  use TicoteWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
