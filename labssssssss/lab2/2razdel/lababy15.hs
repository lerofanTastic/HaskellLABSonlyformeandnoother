module Main (main) where

main::IO() 
main = putStr (show (dupli 3 [1,2,3]))

dupli :: Int -> [a] -> [a]
dupli _ [] = []
dupli n (x:xs) = (take n (cycle [x])) ++ dupli n xs