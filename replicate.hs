replicateWithPattern :: (Num i, Ord i) => i -> a -> [a]
replicateWithPattern 0 _ = []
replicateWithPattern n e = e : replicateWithPattern (n - 1) e

replicateWithGuards :: (Num i, Ord i) => i -> a -> [a]
replicateWithGuards n e
  | n <= 0 = []
  | otherwise = e : replicateWithGuards (n - 1) e
