module Ex1 where

-- 1. Using a list comprehension, give an expression that calculates the sum 1^2
-- + 2^ + ... 100^2 of the first one hundred integer squres

sumSquares :: Int
sumSquares = sum [x ^ 2 | x <- [1 .. 100]]

-- NOTE: Using the formula for summing the sum of the squares of positive
-- integers 1 to n:
sumSqures' :: Int -> Int
sumSqures' n = div (n * (n + 1) * (2 * n + 1)) 6
