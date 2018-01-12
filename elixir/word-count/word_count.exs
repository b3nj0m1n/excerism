defmodule Words do
  @spec count(String.t) :: map()
  def count(sentence) do

       strippedString = Regex.replace(~r/[_]/, sentence, " ")
       strippedString = Regex.replace(~r/[!&$:@^%,]/, strippedString, "")
       strippedString = Regex.replace(~r/( )+/, strippedString, " ")

       downcaseString = String.downcase(strippedString)
       values = String.split(downcaseString, " ")
       map = Enum.reduce values, %{}, fn x, acc ->
         value = Map.get(acc, x)
         number = 1
         if value != nil do
         number = value + 1
         end
         Map.put(acc, x, number)
       end
  end
end
