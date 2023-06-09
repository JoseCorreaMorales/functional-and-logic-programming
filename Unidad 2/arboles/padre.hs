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

{- padre :: Eq a => ArbolB a -> a -> Maybe a
padre VacioB _ = Nothing
padre (NodoB left x right) target
  | x == target = Nothing
  | target `elem` [leftVal, rightVal] = Just x
  | otherwise = case (padre left target, padre right target) of
                  (Just p, _) -> Just p
                  (_, Just p) -> Just p
                  _ -> Nothing
    where
      leftVal = case left of
                  VacioB -> error "El nodo izquierdo no puede ser vacío"
                  NodoB _ val _ -> val
      rightVal = case right of
                  VacioB -> error "El nodo derecho no puede ser vacío"
                  NodoB _ val _ -> val -}

padre :: Eq a => ArbolB a -> a -> Maybe a
padre VacioB _ = Nothing
padre (NodoB left x right) target
  | x == target = Nothing
  | NodoB _ leftVal _ <- left, target == leftVal = Just x
  | NodoB _ rightVal _ <- right, target == rightVal = Just x
  | otherwise = case (padre left target, padre right target) of
                  (Just p, _) -> Just p
                  (_, Just p) -> Just p
                  _ -> Nothing

main = do 
  print(padre ab1 15)