module SumOfMultiples (sumOfMultiples) where

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit = sum $ unique allMultiples 
    where allMultiples :: [Integer]
          allMultiples = factors >>= (\element -> multiples element limit)

multiples :: Integer -> Limit -> [Integer]
multiples start limit = multiples' [] start 0 limit

type Limit = Integer
multiples' :: [Integer] -> Integer -> Integer -> Limit -> [Integer]
multiples' acc start current limit
  | start + current >= limit = acc
  | otherwise                = multiples' (nextNumber : acc) start nextNumber limit
  where
    nextNumber = current + start

unique :: Eq a => [a] -> [a]
unique [] = []
unique (x:xs) = x:unique (filter ((/=) x) xs)
