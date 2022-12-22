main::IO()
main = do putStr (show (rnd_select 1 5))
          putStr (show (rnd_select 5 1))

rnd_select :: Integer -> Integer -> [Integer]
rnd_select a b 
    | a < b = [ x | x <- [a..b]]
    | a > b = [ x | x <- [a, a-1..b]]
    | a == b = [a] 