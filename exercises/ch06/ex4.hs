module Ex4 where

-- 4. Define a recursive function `euclid :: Int -> Int -> Int` that implements
-- Euclid's algorithm for calculating the greatest common divisor of two
-- non-negative integers: if the two numbers are equal, this number is the
-- result; otherwise, the smaller number is subtracted from the larger, and the
-- same process is repeated. For example:
--
-- > euclid 6 27
-- 3

euclid :: Int -> Int -> Int
euclid x y
  | x == y = x
  | x < y = euclid x (y - x)
  | x > y = euclid y (x - y)
