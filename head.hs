head' :: [a] -> a
head' [] = error "Empty List"
head' (x : _) = x

head2 :: [a] -> a
head2 xs = case xs of
  [] -> error "Empty List"
  (x : _) -> x
