module Ex1 where

-- 1. Using library functions, define a function `halve :: [a] -> ([a], [a])`
-- that splits an even-lengthened list into two halves. For example:
--
-- > halve [1, 2, 3, 4, 5, 6]
-- ([1, 2, 3], [4, 5, 6])

-- NOTE: I think this is the better solution.
halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

halve' :: [a] -> ([a], [a])
halve' xs = (take n xs, drop (length xs - n) xs)
  where
    n = length xs `div` 2
