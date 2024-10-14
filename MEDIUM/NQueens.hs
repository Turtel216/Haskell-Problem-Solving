{-
 -
 - Problem Statement
 -
 - Place N chess queens on an N×N chessboard so that no two queens attack each other.
 - Print the number of possible solutions.
 -
-}

module NQueens where

import System.Environment

noDiagonal :: (Int, Int) -> (Int, Int) -> Bool
noDiagonal (x1, y1) (x2, y2) = abs (x1 - x2) /= abs (y1 - y2)

solveQueens :: Int -> [Int] -> [[Int]]
solveQueens n yIn
  | length yIn >= n = [yIn]
  | otherwise = concatMap (solveQueens n) (map (: yIn) [y | y <- [0 .. n - 1], y `notElem` yIn, all (noDiagonal (-1, y)) inCoords])
  where
    inCoords = zip [0 ..] yIn

nQueens :: Int -> Int
nQueens n = length $ solveQueens n []

printQueens :: Int -> IO ()
printQueens n = putStrLn $ "Number of solutions with n = " ++ show n ++ ": " ++ show (nQueens n)

queens = printQueens
