{-
 - Problem Statement
 -
 - Reverse a list.
 -
-}

module ReverseList where

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x : xs) = myReverse xs ++ [x]
