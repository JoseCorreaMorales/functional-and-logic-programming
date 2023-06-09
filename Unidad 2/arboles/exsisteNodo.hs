data ArbolB a = VacioB | NodoB (ArbolB a) a (ArbolB a) deriving Show

ab1 :: ArbolB Integer
ab1 = NodoB aI 10 aD 
  where
    aI = NodoB aII 15 aID 
    aD = NodoB VacioB 18 aDD  
    aII = NodoB VacioB 24 VacioB 
    aID = NodoB VacioB 27 VacioB
    aDD = NodoB VacioB 24 VacioB

existeNodo :: Eq a => a -> ArbolB a -> Bool
existeNodo _ VacioB = False
existeNodo val (NodoB izq x der)
    | x == val = True
    | otherwise = existeNodo val izq || existeNodo val der

main = do
    print (existeNodo 27 ab1)