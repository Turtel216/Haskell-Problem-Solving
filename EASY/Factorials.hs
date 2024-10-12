{-
 - Problem Statement
 -
 - Compute the factorial of a given number n
 -
-}

module Factorials where

factorial num =
  if num == 1 || num == 0
    then 1
    else num * factorial (num - 1)
