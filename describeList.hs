describeList :: [a] -> String
describeList xs =
  "The list is " ++ case xs of
    [] -> "Empty List"
    [x] -> "Singleton List"
    xs -> "a longer List"

describeList' :: [a] -> String
describeList' xs = "The list is " ++ what xs
 where
  what [] = "empty."
  what [x] = "singleton."
  what xs = "a longer List"
