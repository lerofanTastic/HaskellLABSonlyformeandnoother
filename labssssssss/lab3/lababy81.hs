main = do
  print (paths 1 4  [(1,2),(2,3),(1,3),(3,4)])

paths :: Eq a => a -> a -> [(a, a)] -> [[a]]
paths z x c
    | z == x = [[x]]
    | otherwise = [
        z:path | edge<-c, (fst edge) == z,
        path<-(paths (snd edge) x [c|c<-c, c/=edge])]