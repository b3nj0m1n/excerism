module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz x | x == 1 = Just 0
          | x > 1 = Just (toInteger(length (t [x]) - 1))
          | x < 1 = Nothing


t :: [Integer] -> [Integer]
t x | head x == 1 = x
    | even (head x) = t (toInteger( div (head x) 2) : x )
    | odd (head x) = t ((*) 3 (head x) + 1 : x )
    