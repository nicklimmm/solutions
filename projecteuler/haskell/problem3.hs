largestPrimeFactor :: Int -> Int
largestPrimeFactor n = aux [2 ..] n
  where
    aux l@(x : xs) n = case divMod n x of
      (1, 0) -> n -- must be the largest prime factor
      (next, 0) -> aux l next -- keep dividing until indivisible
      _ -> aux xs n -- skip due to indivisibility

main :: IO ()
main = print $ largestPrimeFactor 600851475143
