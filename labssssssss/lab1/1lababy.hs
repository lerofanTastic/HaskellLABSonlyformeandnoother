module Main (main) where
data Lerolero = Dot {x1, x2 :: Double} | Oot {x :: Double} | Net

solve :: Double -> Double -> Double -> Lerolero
solve a b c
    | a == 0 || discr < 0 = Net
    | discr > 0 = Dot {x1 = x1, x2 = x2}
    | otherwise = Oot {x = x1}
    where
        discr = b^2 - 4 * a * c
        x1 = (-b - sqrt discr) / (2 * a)
        x2 = (-b + sqrt discr) / (2 * a)
printAnswer :: Lerolero -> String
printAnswer Net = "Resheniy net"
printAnswer (Oot x) = "X is " ++ show x
printAnswer (Dot x1 x2) ="X1 is " ++ show x1 ++ "; X2 is " ++ show x2

main :: IO ()
main = do 
    print "--------------------Nachalo--------------------"
    print "Vvedi a"
    a <- getLine
    print "Vvedi b"
    b <- getLine
    print "Vvedi c"
    c <- getLine
    print "Otvet:"
    print . printAnswer $ solve (read a :: Double) (read b :: Double) (read c :: Double)
    print "--------------------Konec--------------------"