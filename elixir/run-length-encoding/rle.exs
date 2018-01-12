defmodule RunLengthEncoder do 
  @doc """
  Generates a string where consecutive elements are represented as a data value and count.
  "HORSE" => "1H1O1R1S1E"
  For this example, assume all input are strings, that are all uppercase letters.
  It should also be able to reconstruct the data into its original form. 
  "1H1O1R1S1E" => "HORSE" 
  """
  @spec encode(string) :: String.t
  def encode(string) do
  if string == "" do
  ""
  else
  char_array = String.split string, "", trim: true
  chunk = Enum.chunk_by char_array, fn(v) -> v end
  Enum.reduce chunk, "", fn(x, acc) -> acc <> Integer.to_string(Enum.count(x)) <> Enum.at(x, 0) end
  end
  end

  @spec decode(string) :: String.t
  def decode(string) do
    values = Regex.scan(~r/(\d+)(.)/, string)
    Enum.reduce values, "", fn(x, acc) ->  acc <> String.duplicate(Enum.at(x, 2), String.to_integer(Enum.at(x, 1))) end
  end
end
