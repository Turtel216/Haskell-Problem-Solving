{-
 - Problem Statement
 -
 - Check if the parentheses in a given string are balanced
 -
 - i.e. ( ) corrent and ( ( incorrect
 -
-}

module BalancedParenthesis where

reduce func carryValue lst =
  if null lst
    then carryValue
    else
      let intermediateValue = func carryValue (head lst)
       in reduce func intermediateValue (tail lst)

isBalanced str = 0 == reduce checkBalance 0 str
  where
    checkBalance count letter
      | letter == '(' = count + 1
      | letter == ')' = count - 1
      | otherwise = count
