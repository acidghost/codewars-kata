module Ackermann where
import Test.Hspec

ackermann :: Integer -> Integer -> Integer
ackermann m n
	| m == 0 = n + 1
	| m > 0 && n == 0 = ackermann (m-1) 1
	| m > 0 && n > 0 = ackermann (m-1) $ ackermann m (n-1)


main = hspec $ 
  describe "ackermann" $ do
    it "should work on some simple examples" $ do
      ackermann 1 1 `shouldBe` 3
      ackermann 4 0 `shouldBe` 13
      ackermann 3 3 `shouldBe` 61
