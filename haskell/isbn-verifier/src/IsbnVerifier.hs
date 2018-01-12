module IsbnVerifier (isbn) where

import Data.Char

isbn :: String -> Bool
isbn = validIsbn . convertToNumbers . keepValidCharacters

validIsbn :: [Int] -> Bool
validIsbn input
  | length input /= 10 = False
  | containsXExceptForLast input = False
  | sum(checksum input) `rem` 11 == 0 = True
  | otherwise = False

keepValidCharacters :: String -> String
keepValidCharacters xs = [x | x <- xs, x `elem` "0123456789X"]

convertToNumbers :: String -> [Int]
convertToNumbers = map convertCharToInt

convertCharToInt :: Char -> Int
convertCharToInt 'X' = 10
convertCharToInt x = digitToInt x

checksum :: [Int] -> [Int]
checksum = zipWith (*) [10,9..]

containsXExceptForLast :: [Int] -> Bool
containsXExceptForLast x = 10 `elem` init x
