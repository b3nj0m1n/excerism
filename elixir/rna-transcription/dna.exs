defmodule DNA do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> DNA.to_rna('ACTG')
  'UGAC'
  """
  def to_rna(?A),  do: ?U
  def to_rna(?C),  do: ?G
  def to_rna(?T),  do: ?A
  def to_rna(?G),  do: ?C

  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
     Enum.map(dna, fn x -> to_rna(x) end)
  end

end
