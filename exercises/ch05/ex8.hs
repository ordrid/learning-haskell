module Ex8 where

-- 8. Redefine the function `positions` using the function `find`.

find :: Eq a => a -> [(a, b)] -> [b]
find k t = [v | (k', v) <- t, k == k']

positions :: Eq a => a -> [a] -> [Int]
positions x xs = [i | (x', i) <- zip xs [0 ..], x == x']

positions' :: Eq a => a -> [a] -> [Int]
positions' x xs = find x (zip xs [0 .. ])
