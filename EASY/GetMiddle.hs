{-
 - Problem Statement
 -
 - Given an non empty string, return the middle character(s) of the string.
 - If the string's length is odd, return the two middle characters, otherwise
 - return the middle character
 -
-}

module GetMiddle where

getMiddle :: String -> String
getMiddle s
  | odd n = [s !! halfN]
  | otherwise = [s !! (halfN - 1), s !! halfN]
  where
    n = length s
    halfN = n `div` 2
