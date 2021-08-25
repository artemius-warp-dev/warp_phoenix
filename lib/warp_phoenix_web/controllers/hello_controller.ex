defmodule WarpPhoenixWeb.HelloController do

  use WarpPhoenixWeb, :controller
  
  def hello(conn, _) do
    conn |> json(%{message: "Hello world!"})
  end

end
