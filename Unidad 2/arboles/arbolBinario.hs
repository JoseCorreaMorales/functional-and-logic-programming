--            Ningun Nodo      Izq               Raiz       Der
data ArbolB a = VacioB     |  NodoB (ArbolB a)    a        (ArbolB a) deliviring Show

{-

NodoB aI 10 aD

NodoB (NodoB aII 15 aID) 10 (NodoB VacioB 18 aDD)

NodoB (NodoB NodoB VacioB 24 VacioB 15 NodoB VacioB 27 VacioB) 10 (NodoB VacioB 18 NodoB VacioB 24 VacioB)
 
 -}

ab1 :: ArbolB Integer
ab1 = NodoB aI 10 aD -- Definicio del nodo raiz
  where
    aI = NodoB aII 15 aID -- definiico del nodo izq raiz
    aD = NodoB VacioB 18 aDD -- definiico del nodo der de raiz 

    aII = NodoB VacioB 24 VacioB 
    --aII = HojaB 24 
    aID = NodoB VacioB 27 VacioB
    --aID = HojaB 27
    aDD = NodoB VacioB 24 VacioB
    --aDD = HojaB 24


{- Estructura de un nodo -}
hojaB :: a -> ArbolB a
hojaB x = NodoB VacioB x VacioB


{- Recorridos -}

-- Obtener el valor de la raiz 
raizB :: ArbolB a -> a
raizB VacioB = error "Arbol vacio"
raizB (NodoB _ r _) = r
--RaizB (NodoB i r d) = r


{- Oberter el tamano del arbol -}
tamanoB :: ArbolB a -> Int
tamanoB VacioB = 0
tamanoB (NodoB i r d) = 1 + tamanoB i + tamanoB d


{- obtener el numero de niveles -}
altutaB :: ArbolB a -> Int
altutaB VacioB = 0
alturaB (NodoB i r d) = 1 + max (alturaB i) (alturaB d)




{- Ordenamiento -}

inOrderB :: ArbolB a -> [a]
inOrderB VacioB = []
inOrderB (NodoB i r d) = inOrderB i ++ [r] ++ inOrderB d

preOrden :: ArbolB a -> [a]
preOrden VacioB = []
preOrden (NodoB i r d) = [r] ++ preOrden i ++ preOrden d


posOrden :: ArbolB a -> [a]
posOrden VacioB = []
posOrden (NodoB i r d) = posOrden i ++ preOrden d ++ [r]


{- verificar si un nodo existe -}

existeNodo ::  a -> ArbolB a -> Bool
existeNodo VacioB _ = False
existeNodo (ArbolB x i d) val
    | x == val = True
    | otherwise = existeNodo i val || existeNodo d val


{- padre de un nodo -}