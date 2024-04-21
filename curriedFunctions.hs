sumWithTwo :: (Num a) => a -> a
sumWithTwo = (+ 2)

greaterThanTen :: (Num a, Ord a) => a -> Bool
greaterThanTen = (> 10)

isUpperAlphanum :: Char -> Bool
isUpperAlphanum = (`elem` ['A' .. 'Z'])
