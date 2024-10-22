{-
 - Problem Statement
 -
 - Find out whether a list is a palindrome.
 -
-}

module Palindrome where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome lst = lst == reverse lst
