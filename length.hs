length' :: [a] -> Int
length' x = sum [1 | _ <- x]

lengthPattern :: [a] -> Int
lengthPattern [] = 0
lengthPattern (_ : xs) = 1 + lengthPattern xs
