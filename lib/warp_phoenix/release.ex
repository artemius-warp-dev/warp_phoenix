defmodule WarpPhoenix.Release do
  @app :warp_phoenix

  def migrate do
    load_app()
    IO.inspect("Migrate")
    #for repo <- repos() do
      # {:ok, _, _} = Ecto.Migrator.with_repo(repo, &Ecto.Migrator.run(&1, :up, all: true))
    #end
  end

  def rollback(repo, version) do
    load_app()
    IO.inspect("Rollback")
    # {:ok, _, _} = Ecto.Migrator.with_repo(repo, &Ecto.Migrator.run(&1, :down, to: version))
  end

  #defp repos do
  #  Application.fetch_env!(@app, :ecto_repos)
  #end

  defp load_app do
    Application.load(@app)
  end
end
