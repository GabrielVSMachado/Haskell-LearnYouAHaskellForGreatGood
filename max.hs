max' :: (Ord a) => a -> a -> a
max' a b
  | a > b = a
  | otherwise = b

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of a empty list"
maximum' [x] = x
maximum' (x : xs)
  | x > maxTail = x
  | otherwise = maxTail
  where
    maxTail = maximum' xs

maximumWithMax :: (Ord a) => [a] -> a
maximumWithMax [] = error "Empty List"
maximumWithMax [x] = x
maximumWithMax (x : xs) = max' x (maximumWithMax xs)
