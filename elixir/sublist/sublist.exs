defmodule Sublist do
  @doc """
  Returns whether the first list is a sublist or a superlist of the second list
  and if not whether it is equal or unequal to the second list.
  """
  def compare(first, second) do
    cond do
      equals?(first, second) -> :equal
      sublist?(first, second) -> :sublist
      superlist?(first, second) -> :superlist
      true -> :unequal
    end
  end

  defp sublist?([], _), do: true
  defp equals?(first, second), do: first === second
  defp superlist?(first, second), do: sublist?(second, first)

  defp sublist?(first, second) do
    Enum.chunk(second, Enum.count(first), 1)
    |> Enum.any?(fn(x) -> equals?(x, first) end)
  end

end
