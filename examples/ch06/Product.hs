module Product where

-- Step 1: define the type
--
-- product :: [Int] -> Int
--
--
-- Step 2: enumerate the cases
--
-- product []       =
-- product (n : ns) =
--
--
-- Step 3: define the simple cases
--
-- product []       = 1
-- product (n : ns) =
--
--
-- Step 4: define the other cases
--
-- product []       = 1
-- product (n : ns) = n * product ns
--
-- Step 6: generalise and simplify

product :: Num a => [a] -> a
product = foldr (*) 1
