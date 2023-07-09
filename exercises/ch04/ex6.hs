module Ex6 where

-- 6. Do the same for the following alternative definition, and note the
-- difference in the number of conditional expressions that are required:
--
-- True && b = b
-- False && _ = False

(&&) :: Bool -> Bool -> Bool
(&&) a b = if a then b else False
