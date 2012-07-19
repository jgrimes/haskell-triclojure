module Main where
import System

main = do
  [file1, file2] <- getArgs -- read the first two arguments passed in
  str <- readFile file1 -- Read in a file (from first argument)
  writeFile file2 str -- write out the contents of the file into a second file