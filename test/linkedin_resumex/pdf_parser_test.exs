defmodule LinkedinResumex.PdfParserTest do
  use ExUnit.Case, async: true

  alias LinkedinResumex.PdfParser
  alias LinkedinResumex.Support.Utils

  describe "parse/1" do
    test "should parse a PDF" do
      pdf_filepath = Utils.get_fixtures_dir() |> Path.join("/linkedin_ana.pdf")
      assert {:ok, _} = PdfParser.parse(pdf_filepath)
    end

    test "should return an error if file does not exist" do
      assert {:error, "File does not exist"} = PdfParser.parse("/unknown/file/path.pdf")
    end
  end
end
