main::IO()
main = do putStr (show (range 4 9))
range :: Int -> Int -> [Int]
range a b  
    | a > b = []
    | a == b = [a]
    |otherwise = a : range (a+1) b