defmodule WarpPhoenixWeb.Router do
  use WarpPhoenixWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", WarpPhoenixWeb do
    pipe_through :api
    get "/hello", HelloController, :hello
  end
end
