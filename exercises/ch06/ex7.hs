module Ex7 where

-- 7. Define a recursive funtion `merge :: Ord a => [a] -> [a] -> [a]` that
-- merges two sorted lists to give a single sorted list. For example:
--
-- > merge [2, 5, 6] [1, 3, 4]
-- [1, 2, 3, 4, 5, 6]
--
-- NOTE: your definition should not use functions on sorted litsts such as inset
-- or irosrt, but should be defined using explicit recursion.

merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x : xs) (y : ys)
  | x <= y = x : merge xs (y : ys)
  | otherwise = y : merge (x : xs) ys
