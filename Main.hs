module Main where

main = putStrLn "Hello Clojurians!"


--data Person = Person { name :: String, cards :: [Int] } deriving (Show, Eq)


data PersonTypes = Programmer { name :: String, linesWritten :: Integer }
                 | Person { name :: String }
                   deriving (Show, Eq)

data OurMaybe a = OurJust a | OurNothing

examplePerson = Person "John"

ourMap :: (a -> b) -> [a] -> [b]
ourMap _ []     = []
ourMap f (x:xs) = f x : map f xs


sumThree x y z = x + y + z

sumTwoPlusFive = sumThree 5

curryingExample = undefined

caseExample1 x = case x of
                  Just a -> "There is a value and it is " ++ show a
                  _      -> "There isn't a value"

--caseExample2 x = case x of
                   

exampleType :: (Show a) => a -> String
exampleType = show

anonFunction = undefined

ifExample1 x y = if x == y
                  then "True!"
                  else "False!"

ifExample2 x y = if x == y then "True!" else "False!"


readExample = [1,2,3] ++ read "[1,2,3]"

-- Example of a user defined operator, the classic ternary operator.

True ? x = const x
False ? _ = id

testOperator = (2 == 2) ? putStrLn "It works!" $ putStrLn "It doesn't work"


-- Type classes: Eq, Show, Ord, Read
-- deriving

