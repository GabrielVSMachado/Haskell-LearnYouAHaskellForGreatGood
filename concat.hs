concat' :: [[a]] -> [a]
concat' = foldl1 (++)

concatMap' :: (a -> [b]) -> [a] -> [b]
concatMap' f = concat' . map f
