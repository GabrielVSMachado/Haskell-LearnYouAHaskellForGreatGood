import Data.Foldable (foldr')

intersperse' :: a -> [a] -> [a]
intersperse' _ [] = []
intersperse' _ [a] = [a]
intersperse' y (x : xs) = x : y : intersperse' y xs

intersperseWithFoldR :: (Eq a) => a -> [a] -> [a]
intersperseWithFoldR y = foldr' (\x acc -> if acc /= [] then x : y : acc else x : acc) []
