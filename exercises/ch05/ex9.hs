module Ex9 where

-- 9. The scalar product of two lists of integers xs and ys of length n is given
-- by the sum of the products of corresponding integers:
--
--       n-1
--      .---
--      \
--       .    (xs_i * ys_i)
--      /
--      ----
--       i=0
--
-- In a similar manner to `chisqr`, show how list comprehension can be used to
-- define a function `scalarproduct :: [Int] -> [Int] -> Int` that returns the
-- scalar product of two lists. For example:
--
-- > scalarproduct [1, 2, 3] [4, 5, 6]
-- 32

scalarProduct :: [Int] -> [Int] -> Int
scalarProduct xs ys = sum [x * y | (x, y) <- zip xs ys]

-- Alternative implementation suggested by ChatGPT when I asked it if there's a
-- better way to write the function above:
scalarProduct' :: [Int] -> [Int] -> Int
scalarProduct' xs ys = sum $ zipWith (*) xs ys
