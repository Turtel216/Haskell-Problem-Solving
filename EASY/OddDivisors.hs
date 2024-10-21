{-
 - Problem Statement
 -
 - You are given an interval of integers [A,B][A,B]. For each number in this interval compute
 - its greatest odd divisor. Output the sum of these divisors.
-}

import Control.Monad (replicateM)
import Data.Bits (shiftR)

-- Function to compute the greatest odd divisor of a number
greatestOddDivisor :: Int -> Int
greatestOddDivisor n
  | n `mod` 2 == 1 = n -- If the number is already odd, it's the greatest odd divisor
  | otherwise = greatestOddDivisor (n `shiftR` 1) -- Divide by 2 until we get an odd number

-- Function to solve a single test case
solveTestCase :: Int -> Int -> [Int] -> Int
solveTestCase a b godSum = godSum !! b - godSum !! (a - 1)

-- Main function to handle input and output
main :: IO ()
main = do
  t <- readLn -- Read the number of test cases
  testCases <- replicateM t $ do
    line <- getLine
    let [a, b] = map read (words line)
    return (a, b)

  -- Compute greatest odd divisors for all numbers up to the largest B in the input
  let maxB = maximum (map snd testCases)
      god = map greatestOddDivisor [0 .. maxB] -- Compute greatest odd divisors for all numbers
      godSum = scanl1 (+) god -- Prefix sum of greatest odd divisors

  -- Output the result for each test case
  mapM_ (\(a, b) -> print (solveTestCase a b godSum)) testCases
