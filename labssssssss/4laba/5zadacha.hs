reverse'          :: [a] -> [a]
reverse'          =  foldl (flip (:)) []

main = do
    print $ reverse' [1,2,3,4]