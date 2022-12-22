main :: IO()
main = do
    a <- getLine
    print $ myLast a
 
myLast ::[a] -> a
myLast [] = error "Nichego net"
myLast [x] = x
myLast (x:z) = myLast z