sumOfSquare :: Int -> Int
sumOfSquare n = n * (n + 1) * (2 * n + 1) `div` 6

squareOfSum :: Int -> Int
squareOfSum n = (n * (n + 1) `div` 2) ^ 2

main :: IO ()
main = print $ squareOfSum n - sumOfSquare n
  where
    n = 100
