reverseInt :: Int -> Int
reverseInt n = aux n 0
  where
    aux 0 acc = acc
    aux x acc =
      let (d, m) = divMod x 10
       in aux d (acc * 10 + m)

isPalindrome :: Int -> Bool
isPalindrome n = n == reverseInt n

productsOfTwoNDigitNumbers :: Int -> [Int]
productsOfTwoNDigitNumbers n = [x * y | x <- l, y <- l, x <= y]
  where
    l = [10 ^ (n - 1) .. 10 ^ n - 1]

main :: IO ()
main = print $ maximum $ filter isPalindrome $ productsOfTwoNDigitNumbers 3
