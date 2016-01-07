module Codewars.Kata.Capitals where
import Data.Char
import Test.Hspec

capitals :: String -> [Int]
capitals s = map fst $ filter (\(_, c) -> isUpper c) $ zip [0,1..] s

capitals' :: String -> [Int]
capitals' = zip [0,1..] >>> filter (\(_, c) -> isUpper c) >>> map fst

f >>> g = g . f


main = hspec $ do
  describe "capitals" $ do
    it "should work for some small examples" $ do
      capitals ""         `shouldBe` []
      capitals "CodEWaRs" `shouldBe` [0,3,4,6]
      capitals "aAbB"     `shouldBe` [1,3]
      capitals "4ysdf4"   `shouldBe` []
      capitals "ABCDEF"   `shouldBe` [0..5]
