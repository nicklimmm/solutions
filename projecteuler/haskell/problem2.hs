fibonacciSeq :: [Int]
fibonacciSeq = 1 : 2 : next fibonacciSeq
  where
    next (a : t@(b : _)) = (a + b) : next t

main :: IO ()
main = print $ sum $ filter even $ takeWhile (< (4 * 10 ^ 6)) fibonacciSeq
