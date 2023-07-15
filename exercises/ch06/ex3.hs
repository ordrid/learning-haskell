module Ex3 where

-- 3. Define the exponentiation operator ^ for non-negative integers using the
-- same pattern of recursion as the multiplication operator *, and show how the
-- expression is evaluated using your definition.

(^) :: Int -> Int -> Int
0 ^ 0 = undefined
_ ^ 0 = 1
n ^ m = n * (n ^ (m - 1)) -- NOTE: We have to actually use Ex3.^ to avoid class with the Prelude

-- 2 ^ 3 = 2 * (2 ^ 2)
-- 2 ^ 3 = 2 * (2 * (2 ^ 1))
-- 2 ^ 3 = 2 * (2 * (2 * (2 ^ 0)))
-- 2 ^ 3 = 2 * (2 * (2 * (1)))
-- 2 ^ 3 = 2 * (2 * (2))
-- 2 ^ 3 = 2 * (4)
-- 2 ^ 3 = 8
