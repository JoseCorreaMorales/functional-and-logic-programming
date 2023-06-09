data ArbolB a = VacioB | NodoB (ArbolB a) a (ArbolB a) deriving Show

ab1 :: ArbolB Integer
ab1 = NodoB aI 15 aD            -- Raiz
  where
    aI = NodoB aII 6 aID       -- rama izquierda N1

    aD = NodoB VacioB 20 VacioB    -- rama derecha  N1

    aII = NodoB VacioB 3 VacioB  -- lado izquierdo N2
    -- hijos de 3
    aIII = NodoB VacioB 1 VacioB -- lado izquierdo N3
    aIID = NodoB VacioB 4 VacioB  -- lada derecho N3


    aID = NodoB VacioB 9 VacioB    -- lado derecho nivel N2
    -- hijos de 9
    aIDI = NodoB VacioB 7 VacioB
    aIDD = NodoB VacioB 12 VacioB



    aDD = NodoB VacioB 24 VacioB -- lada izquierdo N2
    aDD = NodoB VacioB 24 VacioB -- lada derecho


inOrderB :: ArbolB a -> [a]
inOrderB VacioB = []
inOrderB (NodoB i r d) = inOrderB i ++ [r] ++ inOrderB d


existeNodo :: Eq a => a -> ArbolB a -> Bool
existeNodo _ VacioB = False
existeNodo val (NodoB izq x der)
    | x == val = True
    | otherwise = existeNodo val izq || existeNodo val der

main = do
    --print (existeNodo 27 ab1)
    print (inOrderB ab1)