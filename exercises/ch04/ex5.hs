module Ex5 where

-- Without using any other library functions or operators, show how the meaning
-- of the following pattern matching definition for logical conjunction `&&` can
-- be formalized using conditional expressions:
--
-- True && True = True
-- _    && _    = False
--
-- Hint: use two nested conditional expresions

(&&) :: Bool -> Bool -> Bool
(&&) a b =
  if a
    then
      if b
        then b
        else False
    else False
