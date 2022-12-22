data Derevo a = Empty | Branch a (Derevo a) (Derevo a) deriving (Show, Eq)
main =  do print $ show (take 3 $ hbalTree 'x' 6)    

hbalTree z 0 = [Empty]
hbalTree z 1 = [Branch z Empty Empty]
hbalTree z x = [Branch z q c | (a, b) <- [(x-2, x-1), (x-1, x-1), (x-1, x-2)], q <- hbalTree z a, c <- hbalTree z b]