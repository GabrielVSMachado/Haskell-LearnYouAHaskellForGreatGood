compareWithHundredNoob :: (Num a, Ord a) => a -> Ordering
compareWithHundredNoob x = compare 100 x

compareWithHundredGenius :: (Num a, Ord a) => a -> Ordering
compareWithHundredGenius = compare 100
