module FoldrExamples where

add :: Int -> Int -> Int
add x y = x + y

-- means

add :: Int -> (Int -> Int)
add = \x -> (\y -> x + y)

--

twice :: (a -> a) -> a -> a
twice f x = f (f x)

twice (* 2) 3 -- > 12
twice reverse [1, 2, 3] -- > [1, 2, 3]

-- processing lists

map :: (a -> b) -> [a] -> [b]
map f xs = [f x | x <- xs]

map (+ 1) [1, 3, 5, 7] -- > [2, 4, 6, 8]
map even [1, 2, 3, 4] -- > [False, True, False, True]
map reverse ["abc", "def", "ghi"] -- > ["cba", "fed", "ihg"]

-- recursive definition map
map :: (a -> b) -> [a] -> [b]
map f [] = []
map f (x : xs) = f x : map f xs

filter :: (a -> Bool) -> [a] -> [a]
filter p xs = [x | x <- xs, p x]

filter even [1 .. 10] -- > [2, 4, 6, 8, 10]
filter (> 5) [1 .. 10] -- > [6, 7, 8, 9, 10]
filter (/= ' ') "abc def ghi" -- > "abcdefghi"

-- recursive definition of filter
filter :: (a -> Bool) -> [a] -> [a]
filter p [] = []
filter p (x : xs)
  | p x = x : filter p xs
  | otherwise = filter p xs

sumsqeven :: [Int] -> Int
sumsqeven ns = sum (map (^ 2) (filter even ns))

all even [2, 4, 6, 8] -- > True
all odd [2, 4, 6, 8] -- > False
takeWhile even [2, 4, 6, 7, 8] -- [2, 4, 6]
dropWhile odd [1, 3, 5, 6, 7] -- [6, 7]

-- The foldr function

f [] = v
f (x : xs) = x # f xs

sum [] = 0
sum (x : xs) = x + sum xs

product [] = 1
product (x : xs) = x * product xs

or [] = False
or (x : xs) = x || or xs

and [] = True
and (x : xs) = x && and xs

sum :: Num a => [a] -> a
sum = foldr (+) 0

product :: Num a => [a] -> a
product = foldr (*) 1

or :: [Bool] -> Bool
or = foldr (||) False

and :: [Bool] -> Bool
and = foldr (&&) True

foldr :: (a -> b -> b) -> b -> [a] -> b
foldr f v [] = v
foldr f v (x : xs) = f x (foldr f v xs)

1 : (2 : (3 : []))
1 + (2 + (3 + 0))

length :: [a] -> Int
length [] = 0
length (_ : xs) = 1 + length xs

1 : (2 : (3 : []))
1 + (2 + (3 + 0))

length :: [a] -> Int
length = foldr (\_ n -> 1 + n) 0

length [1, 2, 3]
(\_ n -> 1 + n)

reverse :: [a] -> [a]
reverse [] = []
reverse (x : xs) = reverse xs ++ [x]

snoc :: a -> [a] -> [a]
snoc x xs = xs ++ [x]

reverse :: [a] -> [a]
reverse = foldr snoc []

foldr (#) v [x0, x1,...,xn] = x0 # (x1 # (... (xn # v) ... ))
