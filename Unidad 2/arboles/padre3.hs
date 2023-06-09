data ArbolB a = VacioB | NodoB (ArbolB a) a (ArbolB a) deriving Show

-- Definición del árbol
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

    aDI = NodoB VacioB 18 VacioB -- lada izquierdo N2
    aDD = NodoB VacioB 24 VacioB -- lada derecho

    aDDI = NodoB VacioB 17 VacioB -- lada izquierdo N2

findParent :: (Ord a) => a -> ArbolB a -> Maybe a
findParent _ VacioB = Nothing
findParent x (NodoB val left right)
    | x < val = case findParent x left of
                    Nothing -> Nothing
                    Just v  -> if v == x then Just val else Just v
    | x > val = case findParent x right of
                    Nothing -> Nothing
                    Just v  -> if v == x then Just val else Just v
    | otherwise = Nothing


main = do 
    print(findParent 20 ab1)
