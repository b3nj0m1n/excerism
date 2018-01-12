defmodule Phone do
  @doc """
  Remove formatting from a phone number.

  Returns "0000000000" if phone number is not valid
  (10 digits or "1" followed by 10 digits)

  ## Examples

  iex> Phone.number("123-456-7890")
  "1234567890"

  iex> Phone.number("+1 (303) 555-1212")
  "3035551212"

  iex> Phone.number("867.5309")
  "0000000000"
  """
  @spec number(String.t) :: String.t
  def number(raw) do
    number = String.codepoints(raw)
    |> Enum.filter(fn (x) -> Regex.match?(~r/[0123456789]/, x) end)
    |> Enum.join

    if String.length(number) == 11 && String.first(number) == "1" do
      number = String.replace_prefix(number, "1", "")
    end

    if String.length(number) == 10 && !Regex.match?(~r/[a-zA-Z]/, raw) do
      number
      else
      "0000000000"
    end
  end

  @doc """
  Extract the area code from a phone number

  Returns the first three digits from a phone number,
  ignoring long distance indicator

  ## Examples

  iex> Phone.area_code("123-456-7890")
  "123"

  iex> Phone.area_code("+1 (303) 555-1212")
  "303"

  iex> Phone.area_code("867.5309")
  "000"
  """
  @spec area_code(String.t) :: String.t
  def area_code(raw) do
    number = number(raw)
    String.at(number, 0) <> String.at(number, 1) <> String.at(number, 2)
  end

  @doc """
  Pretty print a phone number

  Wraps the area code in parentheses and separates
  exchange and subscriber number with a dash.

  ## Examples

  iex> Phone.pretty("123-456-7890")
  "(123) 456-7890"

  iex> Phone.pretty("+1 (303) 555-1212")
  "(303) 555-1212"

  iex> Phone.pretty("867.5309")
  "(000) 000-0000"
  """
  @spec pretty(String.t) :: String.t
  def pretty(raw) do
    number = number(raw)
    area_code = area_code(raw)

    next = String.at(number, 3) <> String.at(number, 4) <> String.at(number, 5)
    last = String.at(number, 6) <> String.at(number, 7) <> String.at(number, 8) <> String.at(number, 9)

    "(#{area_code}) #{next}-#{last}"
  end
end
