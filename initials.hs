initials :: String -> String -> String
initials (f : _) (l : _) = [f] ++ ". " ++ [l] ++ "."
initials _ _ = error "Empty String"

initials' :: String -> String -> String
initials' firstname lastname = [f] ++ ". " ++ [l] ++ "."
 where
  (f : _) = firstname
  (l : _) = lastname

initials2 :: String -> String -> String
initials2 firstname lastname = [f] ++ ". " ++ [l] ++ "."
 where
  (f : _) = firstname
  (l : _) = lastname
