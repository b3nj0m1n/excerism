module Bob (responseFor) where

responseFor :: String -> String
responseFor xs
  | silent xs == ""  = "Fine. Be that way!"
  | shoutQuestion xs = "Calm down, I know what I'm doing!"
  | shout xs  = "Whoa, chill out!"
  | question xs = "Sure."
  | otherwise = "Whatever."

silent :: String -> String
silent [] = ""
silent xs = onlyCharacters xs ++ [x | x <- xs, elem x (['0'..'9'] ++ [':','?'])]

shout :: String -> Bool
shout xs = (onlyCharacters xs) /= "" && length([x | x <- onlyCharacters xs, elem x (['A'..'Z'] )] ) == length (onlyCharacters xs)

shoutQuestion :: String -> Bool
shoutQuestion x = shout x && question x

question :: String -> Bool
question x = last x == '?'

onlyCharacters :: String -> String
onlyCharacters xs = [x | x <- xs, elem x  (['A'..'Z'] ++ ['a'..'z'])]

