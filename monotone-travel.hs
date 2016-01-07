module Monotone where

-- | Return true if the elements of the list are non-decreasing.
--   If the list is empty, return True.
isMonotone :: Ord a => [a] -> Bool
isMonotone [] = True
isMonotone (x:[]) = True
isMonotone (x:xs@(y:_)) = x <= y && isMonotone xs

-- this one does't work with infinite lists
isMonotone' :: Ord a => [a] -> Bool
isMonotone' x
  | length x > 1 = case x of (x:xs@(y:_)) -> x <= y && isMonotone' xs
  | otherwise = True

