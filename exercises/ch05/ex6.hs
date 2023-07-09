module Ex6 where

-- 6. A positive integer is perfectif it equals the suem of all its factors,
-- excluding the number itself. Using a list comprehension and the function
-- `factors`, define a function `perfects :: Int -> [Int]` that returns the list
-- of all number up to a given limit. For example:
--
-- > perfects 500
-- [6, 28, 496]

factors :: Int -> [Int]
factors n = [x | x <- [1 .. n], mod n x == 0]

perfects :: Int -> [Int]
perfects n = [x | x <- [1 .. n], (sum $ tail $ reverse $ factors x) == x]
