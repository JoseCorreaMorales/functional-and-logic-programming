potenciasDeDos :: Int -> String
potenciasDeDos n = potenciasDeDosAux n 0 ""
  where potenciasDeDosAux n i s
          | i <= n = potenciasDeDosAux n (i+1) (s ++ show (2^i) ++ " ")
          | otherwise = s

main = do  
    print(potenciasDeDos 10)
    print(potenciasDeDos 4)





{- ciclo :: String -> Integer -> String

ciclo string n =  concat [string ++ "\n" | i <-[1,2..n]]

main = do
    print(ciclo "Hola" 5) -}

    {- potenciasdedos :: Integer -> Integer  -}

{- potenciasdedos n = concat [string ++ "\n" | i <-[1,2..n]] -}

{- potenciasdedos n = let lista = [x | x <- [1..20], x `mod` 2 == 1] -}
{- potenciasdedos n = [n | n <- [1..n], n ^ 2]  -}

{- ej4 :: Integer -> Integer
ej4 n
  | n > 0 = ej4n^2(n-1)
  | otherwise = 0 -}