{- potenciasDeDos n i | i <= n = do
                                putStrLn . show $ 2 ^ i
                                potenciasDeDos n (i + 1)
                   | otherwise = return () -}

potenciasDeDos :: Int -> String

potenciasDeDos n = 0
    where potenciasDeDos i
            | i <= n = potenciasDeDos n (n -1) show i^2
            | otherwise =""

main = do
    print(potenciasDeDos 4)


    {- potenciasDeDos1 :: Int -> String
potenciasDeDos1 n = [ | x <- [0..n]] -}