data Derevo a = Empty | Branch a (Derevo a) (Derevo a) deriving (Show, Eq)
derevo = Branch 1 (Branch 2 Empty (Branch 4 Empty Empty))(Branch 2 Empty Empty)

main =  do 
  print (count derevo)  

count :: Derevo a -> Int
count Empty = 0
count (Branch x Empty Empty) = 1
count (Branch x z c) = count z + count c