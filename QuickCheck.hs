module Main where
import Test.QuickCheck
import Data.List

-- A quicksort implementation
qsort :: Ord a => [a] -> [a]
qsort []     = []
qsort (x:xs) = qsort lhs ++ [x] ++ qsort rhs -- x here is chosen as the pivot
    where lhs = filter  (< x) xs -- everything less than the pivot
          rhs = filter (>= x) xs -- everything greaterthan or equal to the pivot


-- If the list isn't empty (not (null xs)) then the head of the list should also
-- be the minimum after sorting
prop_minimum xs = not (null xs) ==> head (qsort xs) == minimum xs


-- Checking to see that every element is less than or equal to the item
-- after it
prop_ordered xs = ordered (qsort xs)
    where ordered []       = True
          ordered [x]      = True
          ordered (x:y:xs) = x <= y && ordered (y:xs)



-- To test these, load this file into GHCi and run
-- Main> quickCheck prop_minimum
-- or
-- Main> quickCheck prop_ordered
-- This generates arbitrary test data for you and tests these properties