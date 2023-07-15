module Ex5 where

-- 5. Using the recursive definitions given in this chapter, show how `length
-- [1, 2, 3]`, `drop 3 [1, 2, 3, 4, 5]`, and `init [1, 2, ]` are evaluated.

-- length [1, 2, 3] = length [1, 2, 3]
-- length [1, 2, 3] = 1 + length [2, 3]
-- length [1, 2, 3] = 1 + (1 + length [3])
-- length [1, 2, 3] = 1 + (1 + (1 + length []))
-- length [1, 2, 3] = 1 + (1 + (1 + (length []))
-- length [1, 2, 3] = 1 + (1 + (1 + (0)))
-- length [1, 2, 3] = 1 + (1 + (1))
-- length [1, 2, 3] = 1 + (2)
-- length [1, 2, 3] = 3

-- drop 3 [1, 2, 3, 4, 5] = drop 3 [1, 2, 3, 4, 5] 
-- drop 3 [1, 2, 3, 4, 5] = drop 2 [2, 3, 4, 5]
-- drop 3 [1, 2, 3, 4, 5] = drop 1 [3, 4, 5]
-- drop 3 [1, 2, 3, 4, 5] = drop 0 [4, 5]
-- drop 3 [1, 2, 3, 4, 5] = [4, 5]

-- init [1, 2, 3] = init [1, 2, 3]
-- init [1, 2, 3] = 1 : init [2, 3]
-- init [1, 2, 3] = 1 : 2 : init [3]
-- init [1, 2, 3] = 1 : 2 : []
-- init [1, 2, 3] = 1 : [2]
-- init [1, 2, 3] = [1, 2]
