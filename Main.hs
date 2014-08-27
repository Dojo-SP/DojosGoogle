import Test.Hspec
import Test.HUnit
import Data.List (groupBy)

groupDigits = groupBy (==)
groupTranslate n = length n * 10 + head n
pairs n = map groupTranslate $ groupDigits $ digits n

lasDescribe :: Int -> Int
lasDescribe n = (read $ concat $ map show $ pairs n)-- :: Int

--lasDescribe 22 = 22
--lasDescribe x | x <= 11 = 10 + x
--              | otherwise = 1010 + a * 100 + b where [a, b] = digits x

digits :: Int -> [Int]
digits x | x >= 10 = digits (x `div` 10) ++ [x `mod` 10]
         | otherwise = [x]

main :: IO ()
main = hspec $ do

  describe "testes de descricao" $ do
    it "descricao do 1" $ do
      lasDescribe 1 `shouldBe` 11

    it "descricao do 2" $ do
      lasDescribe 2 `shouldBe` 12

    it "descricao do 11" $ do
      lasDescribe 11 `shouldBe` 21

    it "descricao do 21" $ do
      lasDescribe 21 `shouldBe` 1211

    it "descricao do 12" $ do
      lasDescribe 12 `shouldBe` 1112

    it "descricao do 31" $ do 
      lasDescribe 31 `shouldBe` 1311

    it "descricao do 22" $ do
      lasDescribe 22 `shouldBe` 22

    it "descricao do 111221" $ do
      lasDescribe 111221 `shouldBe` 312211

-- [(1, 3)), (2,2)), (1,1))]

  describe "teste de parse de inteiros" $ do
    it "parse de 1" $ do
      digits 1 `shouldBe` [1]

    it "parse de 11" $ do
      digits 11 `shouldBe` [1, 1]

    it "parse de 1734" $ do
      digits 1734 `shouldBe` [1, 7, 3, 4]

    --it "nao passa" $ do
    --  False @?= True



-- A seqüência de números inteiros obtido a partir de um dígito (qualquer valor entre 1 e 9) onde o termo seguinte é obtido pela descrição do termo anterior é definida como uma seqüência look-and-say.
-- Por exemplo, tendo como dígito inicial 1:
-- 1 é descrito como "um 1" ou 11;
-- 11 é descrito como "dois 1" ou 21;
-- 21 é descrito como "um 2, um 1" ou 1211;
-- 1211 é descrito como "um 1, um 2, dois 1" ou 111221;
-- 111221 é descrito como "três 1, dois 2, um 1" ou 312211.
-- Para dígitos maiores ou iguais a 2, a seqüência é tem o seguinte formato: d, 1d, 111d, 311d, 13211d, 111312211d (sendo d o dígito inicial).
-- Dado o dígito inicial da seqüência, determine a soma de todos os dígitos do 50º elemento da seqüência.
