main::IO()
main = putStr (show (myButLast [1,2,3,4]))
    
myButLast :: [a] -> a
myButLast [a,b] = a 
myButLast [] = error "Nichego net"
myButLast [a] = error "Tolko odno chislo"
myButLast (a : ab) = myButLast ab