quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x : xs) = smallerSorted ++ [x] ++ biggerSorted
  where
    smallerSorted = quicksort [a | a <- xs, a <= x]
    biggerSorted = quicksort [a | a <- xs, a > x]

quicksortWithFilter :: (Ord a) => [a] -> [a]
quicksortWithFilter [] = []
quicksortWithFilter (x : xs) =
  let smallerSorted = quicksort (filter (<= x) xs)
      biggerSorted = quicksort (filter (> x) xs)
   in smallerSorted ++ [x] ++ biggerSorted
