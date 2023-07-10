module Ex7 where

-- 7. Show how the list comprehension [(x, y) | x <- [1, 2], y <- [3, 4]] with
-- two generators can be expressed using two comprehensions with single
-- generators. Hint: nest one comprehension withing the other and make use of
-- the library function `concat :: [[a]] -> [a]`.

someComp :: [(Int, Int)]
someComp = [(x, y) | x <- [1, 2], y <- [3, 4]]

someComp' :: [(Int, Int)]
someComp' = concat [[(x, y) | y <- [3, 4]] | x <- [1, 2]]
