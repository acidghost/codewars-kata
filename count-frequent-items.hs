module Codewars.Frequency where
import qualified Data.Map as Map

mostFrequentItemCount :: [Int] -> Int
mostFrequentItemCount xs = Map.fold max 0 map
	where map :: Map.Map Int Int
	      map = foldl unionFunc Map.empty [Map.singleton x 1 | x <- xs]

unionFunc hacc hb
	| kb `Map.member` hacc = Map.update (\x -> Just (x+1)) kb hacc
	| otherwise = Map.union hacc hb
	where kb = fst $ Map.elemAt 0 hb

testCase :: [Int]
testCase = [3, -1, -1, -1, 2, 3, -1, 3, -1, 2, 4, 9, 3]
