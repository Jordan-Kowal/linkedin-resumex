defmodule LinkedinResumex.WorkExperience do
  @enforce_keys [:title, :company, :start_date]
  defstruct [:title, :company, :start_date, :end_date, :description, :location]

  @type t :: %__MODULE__{
          title: String.t(),
          company: String.t(),
          start_date: Date.t(),
          end_date: Date.t() | nil,
          description: String.t() | nil,
          location: String.t() | nil
        }

  @spec is_ongoing?(t()) :: boolean()
  def is_ongoing?(%__MODULE__{end_date: nil}), do: true
  def is_ongoing?(%__MODULE__{end_date: _}), do: false
end
