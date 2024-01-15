defmodule LinkedinResumex.WorkExperienceTest do
  use ExUnit.Case, async: true

  alias LinkedinResumex.Support.Factory
  alias LinkedinResumex.WorkExperience

  describe "new/1" do
    test "should fail if missing any required fields" do
    end

    test "should fail if dates are not in the right format" do
    end

    test "should successfully build a new WorkExperience" do
    end
  end

  describe "is_ongoing?/1" do
    test "returns true if no end_date" do
      work_experience = Factory.build(:work_experience)
      assert WorkExperience.is_ongoing?(work_experience)
    end

    test "returns false if end_date" do
      work_experience = :work_experience |> Factory.build() |> Factory.with_end_date()
      refute WorkExperience.is_ongoing?(work_experience)
    end
  end
end
