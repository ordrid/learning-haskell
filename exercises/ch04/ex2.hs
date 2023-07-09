module Ex2 where

-- 2. Define a function `third :: [a] -> a that returns the third element in a
-- list that contains at least this many this many elements using:
--
-- a. `head` and `tail`
-- b. list indexing `!!`
-- c. pattern matching

third :: [a] -> a
third xs = head $ tail $ tail xs

third' :: [a] -> a
third' xs = xs !! 2

-- NOTE: Had to look at the solutions appendix for this.
-- FIXME: This is non-exhaustive pattern matching
third'' :: [a] -> a
third'' (_:_:x:_) = x
