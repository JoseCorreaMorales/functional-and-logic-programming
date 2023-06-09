{- 1.0 remover la parte entera de un numero decimal-}

decimal :: Float -> Float
decimal numero = numero - fromIntegral (truncate numero)

{- 2.0  Convetir una hora en formato de 12 horas a formato 24 y sumarle
horas extra -}

formato24Horas :: Integer -> Integer -> Integer

formato24Horas hora horaExtra = if (horaExtra > 12) 
then (hora `mod` 12) + horaExtra else (hora + 12) + horaExtra

main = do 
    print(decimal 2.4432454)
    print(formato24Horas 3 3)
