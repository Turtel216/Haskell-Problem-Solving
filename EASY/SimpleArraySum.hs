{-
 - Problem Statement from HackerRank
 -
 - Given an array of integers, find the sum of its elements.
 -
 - NOTE: This only does not run in GHCI, only on hacker rank
 -
-}

main = interact $ show . sum . map read . tail . words
