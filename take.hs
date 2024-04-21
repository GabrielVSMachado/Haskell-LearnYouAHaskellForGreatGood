takeWithPattern :: (Num i, Ord i) => i -> [a] -> [a]
takeWithPattern 0 xs = []
takeWithPattern _ [] = []
takeWithPattern n (x : xs) = x : takeWithPattern (n - 1) xs

takeWithGuards :: (Num i, Ord i) => i -> [a] -> [a]
takeWithGuards n all
  | n <= 0 = []
  | null all = []
  | otherwise = let (x : xs) = all in x : takeWithGuards (n - 1) xs

takeWithGuardsAndPatterns :: (Num i, Ord i) => i -> [a] -> [a]
takeWithGuardsAndPatterns n _
  | n <= 0 = []
takeWithGuardsAndPatterns _ [] = []
takeWithGuardsAndPatterns n (x : xs) = x : takeWithGuardsAndPatterns (n - 1) xs
