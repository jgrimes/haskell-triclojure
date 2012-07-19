Introductory Haskell
==================


This is some supporting code for a talk I gave called "Haskell through Clojure-tinted Glasses" at the TriClojure meetup group.

You can load (for example) Main.hs into ghci to play around with it.

        ghci Main.hs

If you want to try out Copy.hs, you can either compile it with

        ghc --make Main.hs

or open it with ghci and set your arguments

        ghci Copy.hs
        Main> :set args file1 file2
        Main> main

To try out QuickCheck.hs

        ghci QuickCheck.hs
        Main> quickCheck prop_minimum
        Main> quickCheck prop_ordered
        
Also, some good material online. If you are interested in seeing how pervasive laziness in a language can be used in awesome ways, check out "Why Functional Programming Matters"

[Why Functional Programming Matters (PDF Warning)](http://www.cs.kent.ac.uk/people/staff/dat/miranda/whyfp90.pdf)

[Learn you a Haskell (also available in print)](http://learnyouahaskell.com/)

[Real World Haskell (also available in print)](http://book.realworldhaskell.org/read/)