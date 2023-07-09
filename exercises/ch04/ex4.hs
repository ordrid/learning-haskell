module Ex4 where

-- In a similar way to `&&` in section 4.4, show the disjunction operator `||`
-- can be defined in four different ways using pattern matching.

(||) :: Bool -> Bool -> Bool
False || False = False
_ || _ = True

-- False || False = False
-- False || True = True
-- True || False = True
-- True || True = True

-- False || b = b
-- True || _ = True

-- b || c | b == c b
--        | otherwise = True
