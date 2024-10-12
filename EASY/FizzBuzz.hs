{-
 - Problem Statement
 -
 - 1. If the number is evenly divisible by 3, but not evenly divisible by 5, replace it with the word “fizz”.
 - 2. If the number is evenly divisible by 5, but not evenly divisible by 3, replace it with the word “buzz”.
 - 3. f the number is evenly divisible by both 3 and 5, replace it with the word “fizzbuzz”.
 -
-}

module FizzBuzz where

fizzBuzzFor number
  | 0 == number `rem` 15 = "fizzbuzz"
  | 0 == number `rem` 5 = "buzz"
  | 0 == number `rem` 3 = "fizz"
  | otherwise = show number

naiveFizzBuzz fizzBuzzCount curNum fizzBuzzString =
  if curNum > fizzBuzzCount
    then fizzBuzzString
    else
      let nextFizzBuzzString = fizzBuzzString <> fizzBuzzFor curNum <> " "
          nextNumber = curNum + 1
       in naiveFizzBuzz fizzBuzzCount nextNumber nextFizzBuzzString
