module Init where

-- Step 1: define the type
--
-- init :: [a] -> [a]
--
--
-- Step 2: enumberate the cases
--
-- init (x:xs) =
--
--
-- Step 3: define the simple cases
--
-- init (x:xs) | null xs = []
--             | otherwise =
--
--
-- Step 4: define the other cases
--
-- init (x:xs) | null xs   = []
--             | otherwise = xs : init xs
--
-- Step 5: generalise and simplify

init :: [a] -> [a]
init [_] = []
init (x : xs) = x : init xs
