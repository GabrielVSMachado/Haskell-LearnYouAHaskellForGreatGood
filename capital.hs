capital :: [Char] -> [Char]
capital "" = "Empty String"
capital all@(x : xs) = all ++ xs
