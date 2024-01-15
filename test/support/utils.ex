defmodule LinkedinResumex.Support.Utils do
  @spec get_fixtures_dir() :: String.t()
  def get_fixtures_dir() do
    Path.join([__DIR__, "fixtures"])
  end
end
