zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' f xs ys
  | null xs = []
  | null ys = []
zipWith' f (x : xs) (y : ys) = f x y : zipWith' f xs ys
