data ArbolB a = VacioB | NodoB (ArbolB a) a (ArbolB a) deriving Show

ab1 :: ArbolB Integer
ab1 = NodoB aI 10 aD 
  where
    aI = NodoB aII 15 aID 
    aD = NodoB VacioB 18 aDD 
    aII = NodoB VacioB 24 VacioB 
    aID = NodoB VacioB 27 VacioB
    aDD = NodoB VacioB 24 VacioB

hojaB :: a -> ArbolB a
hojaB x = NodoB VacioB x VacioB

-- si valor del nodo que estoy buscando es igual a izquierda o derecha del nodo  

padre :: Eq a => ArbolB a -> a -> Maybe a
padre VacioB _ = Nothing -- en caso de que arbol este vacio 
padre (NodoB left x right) target -- x es el nodo actual y izq y der del nodo actual     
  | x == target = Nothing -- si el nodo actual es igual al nodo objetivo entonces no tiene padre
  | target `elem` [leftVal, rightVal] = Just x --  si el valor target es igual al valor del nodo izq o der. Si es así, el nodo actual es el padre del nodo objetivo
 
 --Si target no es igual al valor del nodo actual ni a ninguno de los valores en los nodos izquierdo o derecho
  | otherwise = case (padre left target, padre right target) of
                  (Just p, _) -> Just p --  p es el nodo padre que se esta buscando
                  (_, Just p) -> Just p
                  _ -> Nothing
    where
      leftVal = case left of -- se extrae el valor del nodo izquierdo y se almancena el leftVal, si esta vacio retorna un error
                  VacioB -> error "El nodo izquierdo no puede ser vacío"
                  NodoB _ val _ -> val
      rightVal = case right of
                  VacioB -> error "El nodo derecho no puede ser vacío"
                  NodoB _ val _ -> val
main = do 
  print(padre ab1 24)