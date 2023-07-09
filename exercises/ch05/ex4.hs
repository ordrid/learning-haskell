module Ex4 where

-- 4. In a similar way to the function `length`, show how the library function
-- `replicadte :: Int -> a -> [a]` that produces a list o identical elements can
-- be defined using a list comprehension. For example:
--
-- > replicate 3 True
-- [True, True, True]

replicate :: Int -> a -> [a]
replicate x a = [a | _ <- [1 .. x]]
