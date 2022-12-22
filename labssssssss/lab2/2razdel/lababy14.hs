main::IO() 
main = putStr (show (dupli [1,2,3]))

dupli :: [a] -> [a]
dupli [] = []
dupli (x:z) = x : x : dupli z