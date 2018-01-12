defmodule DNA do
  @doc """
  Returns number of differences between two strands of DNA, known as the Hamming Distance.

  ## Examples

  iex> DNA.hamming_distance('AAGTCATA', 'TAGCGATC')
  4
  """
  @spec hamming_distance([char], [char]) :: non_neg_integer
  def hamming_distance(strand1, strand2) when length(strand1) !== length(strand2), do: nil
  def hamming_distance(strand, strand), do: 0
  def hamming_distance(strand1, strand2) do
      [head1|tail1] = strand1
      [head2|tail2] = strand2
      if head1 == head2 do
        hamming_distance(tail1, tail2)
      else
        hamming_distance(tail1, tail2) + 1
      end
  end

end
