module Ex8 where

-- 8. Using `merge`, define a function `msort :: Ord a => [a] -> [a]` that
-- implements merge sort, in which the empty list and singleton lists are
-- already sorted, and any other list is sorted by merging togethere the two
-- lists separately.
--
-- Hint: first define a function `halve :: [a] -> ([a], [a])` that splits a list
-- into the two halves whose lengths differ by at most one.

merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x : xs) (y : ys)
  | x <= y = x : merge xs (y : ys)
  | otherwise = y : merge (x : xs) ys

halves :: [a] -> ([a], [a])
halves xs = splitAt n xs
  where
    n = div (length xs) 2

msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge (msort left) (msort right)
  where
    (left, right) = halves xs
