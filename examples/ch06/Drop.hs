module Drop where

-- Step 1: define the type
--
-- drop :: Int -> [a] -> [a]
--
--
-- Step 2: enumerate the cases
--
-- drop 0        =
-- drop 0 (x:xs) =
-- drop n []     =
-- drop n (x:xs) =
--
--
-- Step 3: define the simple cases
--
-- drop 0 []     = []
-- drop 0 (x:xs) = x:xs
-- drop n []     = []
-- drop n (x:xs) =
--
--
-- Step 3: define the other cases
--
-- drop 0 []     = []
-- drop 0 (x:xs) = x:xs
-- drop n []     = []
-- drop n (x:xs) = drop (n - 1) xs
--
--
-- Step 5: generalize and simplify

drop :: Integral b => b -> [a] -> [a]
drop 0 xs      = xs
drop n []     = []
drop n (x:xs) = drop (n - 1) xs
