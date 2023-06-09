data ArbolB a = VacioB | NodoB (ArbolB a) a (ArbolB a) deriving Show

--lista1 = inOrderBToList ab1 [] 

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

    aD = NodoB aDI 20 aDD    -- rama derecha  N1

    aII = NodoB aIII 3 aIID  -- lado izquierdo N2
    -- hijos de 3
    aIII = NodoB VacioB 1 VacioB -- lado izquierdo N3
    aIID = NodoB VacioB 4 VacioB  -- lada derecho N3

    aID = NodoB aIDI 9 aIDD    -- lado derecho nivel N2
    -- hijos de 9
    aIDI = NodoB VacioB 7 VacioB
    aIDD = NodoB VacioB 12 VacioB

    aDI = NodoB aDDI 18 VacioB -- lada izquierdo N2

    aDD = NodoB VacioB 24 VacioB -- lada derecho

    aDDI = NodoB VacioB 17 VacioB -- lada izquierdo N2


-- Ejemplo de uso
main = do
  -- print(inOrderBToList ab1 lista1)
  print(estaEnArbol 6 ab1)


{-               15
              /     \
             /       \
            6         20
           / \       /  \
          /   \     /    \
         3     9   18    24
        / \   / \   /      
       1   4 7  12  17       -}


