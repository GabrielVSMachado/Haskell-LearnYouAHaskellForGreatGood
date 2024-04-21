sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x : xs) = x + sum' xs

sumWithFold :: (Num a) => [a] -> a
sumWithFold = foldl (+) 0
