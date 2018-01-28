module Pangram (isPangram) where

import Data.Char

isPangram :: String -> Bool
isPangram xs = length (filter (>0) ve) == 26
   where ve = map (numChar xs) ['a'..'z']

numChar :: String -> Char -> Int
numChar xs c = length $ filter (== c) lc
    where lc = map toLower xs