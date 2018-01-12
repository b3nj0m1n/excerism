defmodule DNA do
  @nucleotides [?A, ?C, ?G, ?T]

  @doc """
  Counts individual nucleotides in a DNA strand.

  ## Examples

  iex> DNA.count('AATAA', ?A)
  4

  iex> DNA.count('AATAA', ?T)
  1
  """
  @spec count([char], char) :: non_neg_integer
  def count(strand, nucleotide) do
    hist = histogram(strand)
    if !Map.has_key?(hist, nucleotide), do: raise ArgumentError
    Map.get(hist, nucleotide)
  end


  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> DNA.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram([char]) :: Map
  def histogram(strand) do
    valid = Enum.all? strand, fn x -> x == ?A || x == ?T || x == ?C || x == ?G end
    if !valid, do: raise ArgumentError
    Map.new([?A, ?T, ?C, ?G], fn x -> {x, count?(strand, x)} end)
  end

  defp count?(strand, nucleotide) do
    Enum.filter(strand, fn x -> x == nucleotide end)
    |> Enum.count
  end
end
