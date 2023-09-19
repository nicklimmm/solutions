isMultipleOfOr :: [Int] -> Int -> Bool
isMultipleOfOr [] _ = False
isMultipleOfOr (x : xs) n = (n `mod` x == 0) || isMultipleOfOr xs n

main :: IO ()
main = print $ sum $ filter (isMultipleOfOr [3, 5]) [1 .. 1000 - 1]
