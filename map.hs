map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f xs = [f x | x <- xs]

mapRecursive :: (a -> b) -> [a] -> [b]
mapRecursive _ [] = []
mapRecursive f (x : xs) = f x : mapRecursive f xs

mapWithFoldR :: (a -> b) -> [a] -> [b]
mapWithFoldR f = foldr (\x acc -> f x : acc) []
