defmodule LinkedinResumex.Support.Factories.WorkExperienceFactory do
  alias Calendar
  alias LinkedinResumex.WorkExperience

  defmacro __using__(_opts) do
    quote do
      @spec work_experience_factory() :: WorkExperience.t()
      def work_experience_factory do
        %WorkExperience{
          title: sequence(:title, &"Work Experience #{&1}"),
          company: sequence(:company, &"Company #{&1}"),
          start_date: today(),
          end_date: nil,
          description: sequence(:description, &"Description #{&1}"),
          location: "Bordeaux, Nouvelle-Aquitaine, France"
        }
      end

      @spec with_end_date(WorkExperience.t()) :: WorkExperience.t()
      def with_end_date(%WorkExperience{} = work_experience, value \\ nil) do
        end_date = if is_nil(value), do: today(), else: value
        %{work_experience | end_date: end_date}
      end

      @spec today() :: Date.t()
      defp today do
        Date.beginning_of_month(Date.utc_today())
      end
    end
  end
end
