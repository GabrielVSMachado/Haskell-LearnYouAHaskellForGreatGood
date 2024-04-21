elem' :: (Eq a) => a -> [a] -> Bool
elem' y = foldl (\t x -> x == y || t) False

elemWithOr :: (Eq a) => a -> [a] -> Bool
elemWithOr t xs = or $ map (== t) xs

elemWithAny :: (Eq a) => a -> [a] -> Bool
elemWithAny t = any (== t)
