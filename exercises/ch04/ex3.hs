module Ex3 where

-- Consider a function `safetail :: [a] -> [a]` that behaves in the same ways as
-- `tail` except that it maps the empty list to itself rather than producing an
-- error. Using `tail` and the function `null :: [a] -> Bool` that decides if a
-- list is empty or not, define `safetail` using:
--
-- a. a conditional expression;
-- b. guarded equations;
-- c. pattern matching.

safetail :: [a] -> [a]
safetail xs = if null xs then [] else tail xs

safetail' :: [a] -> [a]
safetail' xs
  | null xs = []
  | otherwise = tail xs

safetail'' :: [a] -> [a]
safetail'' [] = []
safetail'' xs = tail xs
