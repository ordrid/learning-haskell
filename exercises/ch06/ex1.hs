module Ex1 where

-- 1. How does the recursive version of the factorial function behave if applied
-- to a negative argument, such as (-1)? Modify the definition to prohibit
-- negative arguments by adding a guard to the recursive case.

-- NOTE: For neagative arguments, this function never terminates.
fac :: Int -> Int
fac n | n > 0 = n * fact (n - 1)
