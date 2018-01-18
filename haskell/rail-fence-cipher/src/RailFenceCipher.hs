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
decode size encoded = map fst (sortBy (comparing snd) (zip encoded (positions size encoded)))

positions :: Int -> String -> [Int]
positions i s = map fst (sortBy (comparing  snd) (take (length s) (zip [1..] (cycle (rows i)))))
