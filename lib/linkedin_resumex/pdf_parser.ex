defmodule LinkedinResumex.PdfParser do
  @spec parse(String.t()) :: any()
  def parse(file_path) do
    if File.exists?(file_path) do
      {:ok, File.read!(file_path)}
    else
      {:error, "File does not exist"}
    end
  end
end
