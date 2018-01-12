defmodule Anagram do
  @doc """
  Returns all candidates that are anagrams of, but not equal to, 'base'.
  """
  @spec match(String.t, [String.t]) :: [String.t]
  def match(base, candidates) do
    Enum.filter(candidates, fn(anagram) -> anagram?(anagram, base) end)
  end

  defp anagram?(anagram, base) do
    downcase_anagram = String.downcase(anagram)
    downcase_base = String.downcase(base)
    downcase_anagram != downcase_base
    && String.length(anagram) == String.length(base)
    && to_list_and_sort(downcase_anagram) == to_list_and_sort(downcase_base)
  end

  defp to_list_and_sort(anagram), do: String.codepoints(anagram) |> Enum.sort
end
