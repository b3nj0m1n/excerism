module RailFenceCipher (encode, decode)
where

import Data.Ord
import Data.List

encode :: Int -> String -> String
encode size decoded = map fst (toTupleWithSort decoded (rows size))

toTupleWithSort :: String -> [Int] -> [(Char, Int)]
toTupleWithSort s i = sortBy (comparing  snd) (zip s (cycle i))

rows :: Int -> [Int]
rows t = [1..t] ++ (reverse [2..t-1])

decode :: Int -> String -> String
decode size encoded = removeDot (t size encoded)

t :: Int -> String -> String
t size encoded = concat (map (: space  size) encoded)

space :: Int -> String
space i = concat (replicate i ".")


removeDot :: String -> String
removeDot xs = [ x | x <- xs, not (x `elem` ".") ]