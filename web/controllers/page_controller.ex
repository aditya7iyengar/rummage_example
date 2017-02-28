defmodule RummageExample.PageController do
  use RummageExample.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
