data ArbolB a = VacioB | NodoB (ArbolB a) a (ArbolB a) deriving Show

-- Función auxiliar para recorrer el árbol y llenar la lista en orden in-order
inOrderBToList :: ArbolB a -> [a] -> [a]
inOrderBToList VacioB lista = lista
inOrderBToList (NodoB i r d) lista = inOrderBToList i (r : inOrderBToList d lista)

-- Función para verificar si un elemento está o no en el árbol
estaEnArbol :: (Eq a) => a -> ArbolB a -> Bool
estaEnArbol x arbol = elem x (inOrderBToList arbol [])

-- Definición del árbol
ab1 :: ArbolB Integer
ab1 = NodoB aI 15 aD            -- Raiz
  where
    aI = NodoB aII 6 aID       -- rama izquierda N1
    aD = NodoB VacioB 20 VacioB    -- rama derecha  N1
    aII = NodoB aIII 3 aIID  -- lado izquierdo N2
    aIII = NodoB VacioB 1 VacioB -- lado izquierdo N3
    aIID = NodoB VacioB 4 VacioB  -- lada derecho N3
    aID = NodoB aIDI 9 aIDD    -- lado derecho nivel N2
    aIDI = NodoB VacioB 7 VacioB
    aIDD = NodoB VacioB 12 VacioB

-- Ejemplo de uso
main = do
    print (estaEnArbol 3 ab1) -- True
    print (estaEnArbol 8 ab1) -- False