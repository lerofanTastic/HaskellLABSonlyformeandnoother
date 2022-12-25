myLast' = foldr1 (const id)

main = do
    print $ myLast' [1,2,3]