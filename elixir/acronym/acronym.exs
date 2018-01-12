defmodule Acronym do

  @spec abbreviate(string) :: String.t()
  def abbreviate(string) do
    split = String.replace(string, ~r/[A-Z]/, " \\0")
    upcase = String.upcase split
    values = String.split(upcase, ~r/[ -]/)
    acronym = Enum.reduce values, "", fn x, acc ->
      first = String.slice(x, 0, 1)
      acc = acc <> first
    end
    acronym
  end
end
