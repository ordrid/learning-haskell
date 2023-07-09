module Ex7 where

-- 7. Show how the meaning of the following curried function definition can be
-- formalized in terms of lambda expresions:
--
-- mult :: Int -> Int -> Int -> Int
-- mult x y z = x * y * z

mult :: Int -> Int -> Int -> Int
mult = \x -> (\y -> (\z -> x * y *z)) 
