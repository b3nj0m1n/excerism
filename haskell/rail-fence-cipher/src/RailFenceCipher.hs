module RailFenceCipher (encode, decode)
where

import Data.Ord
import Data.List

encode :: Int -> String -> String
encode size decoded = map fst (toTuple decoded (rows size))

toTuple :: String -> [Int] -> [(Char, Int)]
toTuple s i = sortBy (comparing  snd) (zip s (cycle i))

rows :: Int -> [Int]
rows t = [1..t] ++ (reverse [2..t-1])

decode :: Int -> String -> String
decode a b = "You need to implement this function!"
