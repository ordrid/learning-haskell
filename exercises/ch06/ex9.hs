module where

-- 9. Using the five-step process, construct the library functions that:
-- a. calculate the `sum` of a list of numbers;

-- Step 1: define the type
--
-- sum :: Number a => [a] -> a

-- Step 2: enumerate the cases
--
-- sum :: Number a => [a] -> a
-- sum []     =
-- sum [x]    =
-- sum (x:xs) =

-- Step 3: define the simple cases
--
-- sum :: Number a => [a] -> a
-- sum []     = 0
-- sum [x]    = x
-- sum (x:xs) =

-- Step 4: define the otehr cases
--
-- sum :: Number a => [a] -> a
-- sum []     = 0
-- sum [x]    = x
-- sum (x:xs) = x + (sum xs)

-- Step 5: generalise and simplify
sum :: Num a => [a] -> a
sum [] = 0
sum [x] = x
sum (x : xs) = x + (sum xs)

-- b. `take` a given number of elements from the start of a list;

-- Step 1: define the type
--
-- take :: Int -> [a] -> [a]

-- Step 2: enumerate the cases
--
-- take :: Int -> [a] -> [a]
-- take _ []     =
-- take 0 xs     =
-- take n (x:xs) =

-- Step 3: define the simple cases
--
-- take :: Int -> [a] -> [a]
-- take _ []     = []
-- take 0 xs     = []
-- take n (x:xs) =

-- Step 4: define the otehr cases
--
-- take :: Int -> [a] -> [a]
-- take _ []     = []
-- take 0 xs     = []
-- take n (x:xs) = x : (take (n - 1) xs)

-- Step 5: generalise and simplify
--
take :: Int -> [a] -> [a]
take _ [] = []
take 0 xs = []
take n (x : xs) = x : (take (n - 1) xs)

-- c. select the `last` element of a non-empty list.

-- Step 1: define the type
--
-- last :: [a] -> a

-- Step 2: enumerate the cases
--
-- last :: [a] -> a
-- last []     =
-- last [x]    =
-- last (x:xs) =

-- Step 3: define the simple cases
--
-- last :: [a] -> a
-- last []     = error "empty list"
-- last [x]    =  x
-- last (x:xs) =

-- Step 4: define the otehr cases
-- last :: [a] -> a
-- last []     = error "empty list"
-- last [x]    =  x
-- last (x:xs) = last xs

-- Step 5: generalise and simplify
last :: [a] -> a
last [] = error "empty list"
last [x] = x
last (x : xs) = last xs
