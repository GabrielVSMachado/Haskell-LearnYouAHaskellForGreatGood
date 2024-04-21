import Data.ByteString (unsnoc)

reverseWithPattern :: [a] -> [a]
reverseWithPattern [] = []
reverseWithPattern (x : xs) = reverseWithPattern xs ++ [x]

reverseWithGuards :: [a] -> [a]
reverseWithGuards all
  | null all = []
  | otherwise = let x = last all; xs = init all in x : reverseWithGuards xs
