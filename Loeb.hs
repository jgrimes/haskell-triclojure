module Main where

instance Show (x -> a)
instance Eq (x -> a)


-- This is from Dan Piponi's blog, A Neighborhood of Infinity

-- A Num instance for functions that produce values with Num instances
-- Basically lets us add/multiply Num valued functions
instance (Num a,Eq a) => Num (x -> a) where
    fromInteger = const . fromInteger
    f + g = \x -> f x + g x
    f * g = \x -> f x * g x
    negate = (negate .)
    abs = (abs .)
    signum = (signum .)



-- the magic function
loeb x = fmap ($ loeb x) x

-- Notice how we have forward and backward references
-- and a mixture of Num functions and list functions (list indexing and sum)
test = [ (!!5), 3, (!!0) + (!!1), (!!2)*2, sum . take 3, 17]


example = loeb test