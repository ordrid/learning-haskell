module Example where

-- Basic concepts

fac :: Int -> Int
fac n = prod [1 .. n]

fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n - 1)

(*) :: Int -> Int -> Int
m * 0 = 0
m * n = m + (m * (n - 1))

-- Recursion on lists

product :: Num a => [a] -> a
product [] = 1
product (n : ns) = n * product ns

length :: [a] -> Int
length [] = 0
length (_ : xs) = 1 + length xs

reverse :: [a] -> [a]
reverse [] = []
reverse (x : xs) = revers xs ++ x

(++) :: [a] -> [a] -> [a]
[] ++ ys = ys
(x : xs) ++ ys = x : (xs ++ ys)

insert :: Ord a => a -> [a] -> [a]
insert x [] = [x]
insert x (y : ys)
  | x <= y = x : y : ys
  | otherwise = y : insert x ys

isort :: Ord a => [a] -> [a]
isort [] = []
isort (x : xs) = insert x (isort xs)

-- Multiple arguments

zip :: [a] -> [b] -> [(a, b)]
zip [] _ = []
zip _ [] = []
zip (xs : xs) (y : ys) = (x, y) : zip xs ys

drop :: Int -> [a] -> [a]
drop 0 xs = xs
drop _ [] = []
drop n (_ : xs) = drop (n - 1) xs

-- Multiple recursion

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 2) + fib (n - 1)

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x : xs) = qsort smaller ++ [x] ++ qsort larger
  where
    smaller = [a | a <- xs, a <= x]
    larger = [b | b <- xs, b > x]

-- Mutual recursion

even :: Int -> Bool
even 0 = True
even n = odd (n - 1)

odd :: Int -> Bool
odd 0 = False
odd n = even (n - 1)
