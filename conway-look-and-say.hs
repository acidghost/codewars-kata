module LookAndSay where
import Test.Hspec
import Test.QuickCheck
import Data.List

lookSay :: Integer -> Integer
lookSay i = read asString
	where grouped = group $ show i
	      zipped = zip (map length $ grouped) (map head $ grouped)
	      asString = foldl (\acc (h, t) -> acc ++ (show h) ++ t:"") "" $ zipped


main = hspec $ do
  describe "lookSay" $ do
    it "should handle simple numbers" $ do
      lookSay 0  `shouldBe` 10
      lookSay 1  `shouldBe` 11
      lookSay 21 `shouldBe` 1211
    it "should handle multi-digit numbers" $
      lookSay 33333333333331 `shouldBe` 13311
    it "should work on simple random tests" $
      property $ 
        forAll (choose (1,9)) $ \x ->
        forAll (arbitrary `suchThat` (> 0)) $ \l ->
          lookSay (foldr1 (\x acc -> x + 10 * acc) $ genericReplicate l x) `shouldBe` l*10 + x
