defmodule Bob do
  def hey(input) do
   cond do
       is_silence(input) -> "Fine. Be that way!"
       is_shouting(input) or is_russian(input) -> "Whoa, chill out!"
       is_question(input)  -> "Sure."
       true -> "Whatever."
   end
  end

  defp is_shouting(input) do
    if String.ends_with?(input, "!") do
        String.match?(input, ~r/^[ !A-Z0-9,%^@#$(*^]*$/)
    else
        String.match?(input, ~r/^[ A-Z]*$/)
    end

  end

  defp is_russian(input) do
    String.match?(input, ~r/^[УХОДИ]*$/)
  end

  defp is_question(input) do
    String.ends_with?(input, "?")
  end

  defp is_silence(input) do
    String.match?(input, ~r/^ *$/)
  end

end
