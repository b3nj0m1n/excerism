module IsbnVerifier (isbn) where

import Data.Char

isbn :: String -> Bool
isbn = validIsbn . convert . convertToNumberArray . keepValidCharacters

validIsbn :: [Int] -> Bool
validIsbn input
  | length input /= 10 = False
  | sum input `mod` 11 == 0 = True
  | otherwise = False

keepValidCharacters :: String -> String
keepValidCharacters xs = [x | x <- xs, x `elem` "0123456789X"]

convertToNumberArray :: String -> [Int]
convertToNumberArray = map convertCharToInt

convertCharToInt :: Char -> Int
convertCharToInt 'X' = 10
convertCharToInt x = digitToInt x

convert :: [Int] -> [Int]
convert = zipWith (*) $ reverse [0..10]

