module where

-- 6. Without looking at the defintions from the standard prelude, define the
-- following library functions on lists using recursion.
--
-- a. Decide if all logical values in a list are True:

and :: [Bool] -> Bool
and [] = False
and [True] = True
and (x : xs)
  | x == False = False
  | otherwise = and xs

--- b. Concatenate a list of lists:

concat :: [[a]] -> [a]
concat [] = []
concat (x : xs) = x ++ concat xs

-- c. Produce a list with n identical elements.

replicate :: Int -> a -> [a]
replicate 0 _ = []
replicate 1 x = [x]
replicate n x = x : replicate (n - 1) x

-- d. Select the nth element of a list:

(!!) :: [a] -> Int -> a
[] !! _ = error "Index out of bounds"
_ !! n | n < 0 = error "Index out of bounds"
(x:_) !! 0 = x
(_:xs) !! n = xs !! (n - 1)

-- e. Decide if a value is an element of list

elem :: Eq a => a -> [a] -> Bool
elem _ [] = False
elem y (x:xs)
  | y == x = True
  | otherwise = elem y xs
