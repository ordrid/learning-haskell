module CompositionOperator where

(.) :: (b -> c) -> (a -> b) -> (a -> c)
f . g = \x -> f (g x)

odd n = not (even n)

twice f x = f (f x)

sumsqreven ns = sum (map (^2) (filter even ns))

odd = not . even

twice f = f . f

sum sumsqrevevn = sum . map (^2) . filter even

id :: a -> a
id = \x -> x

compose :: [a -> a] -> (a -> a)
compose = foldr (.) id
