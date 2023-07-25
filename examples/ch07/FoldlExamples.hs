module FoldlExamples where

sum :: Num a => [a] -> a
sum = sum' 0
  where
    sum' v [] = v
    sum' v (x : xs) = sum' (v + x) xs

-- sum [1, 2, 3]
-- sum' 0 [1, 2, 3]
-- sum' (0 + 1) [2, 3]
-- sum' ((0 + 1) + 2) [3]
-- sum' (((0 + 1) + 2) + 3) []
-- ((((0) + 1) + 2) + 3)
-- 6

f v [] = v
f v (x : xs) = f (v # x) xs

sum :: Num a => [a] -> a
sum = foldl (+) 0

product :: Num a => [a] -> a
product = foldl (*) 1

or :: [Bool] -> Bool
or = foldl (||) False

and :: [Bool] -> Bool
and = foldl (&&) false

length :: [a] -> Int
length = foldl (\n _ -> n + 1) 0

reverse :: [a] -> [a]
reverse = foldl (\xs x -> x:xs) []

foldl :: (a -> b -> a) -> a -> [b] -> a
foldl f v [] = v
foldl f v (x:xs)  foldl f (f v x) xs

foldl (#) v [x0, x1, ..., xn] = (... ((v # x0) # x1) ...) # xn
