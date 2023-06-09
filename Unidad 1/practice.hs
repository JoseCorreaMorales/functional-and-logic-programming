{-Ejemplo 1
Realizar una función que devuelva el máximo de dos argumentos de tipo Entero, salida de tipo Entero.
-}

ej1v1 :: Int -> Int -> Int
ej1v1 a b = max a b

ej1v2 :: Int -> Int -> Int
ej1v2 a b = if (a > b) then a else b

ej1v3 :: Int -> Int -> Int
ej1v3 a b
  | a > b = a
  | b > a = b
  | otherwise = error "Son iguales"


{-Ejemplo 2
Realizar una función recursiva que duplique n cantidad de veces una cadena. (String -> Int -> String)
-}

-- ej2v1 "Hola" 3
ej2v1 :: String -> Int -> String
ej2v1 a b = if (b > 0) then a ++ ej2v1 a (b-1) else ""


ej2v2 :: String -> Int -> String
ej2v2 a b
  | b > 0 = a ++ ej2v2 a (b-1)
  | b == 0 = ""


ej2v3 :: String -> Int -> String
ej2v3 _ 0 = ""
ej2v3 a b = a ++ ej2v3 a (b-1)


{-Ejemplo 3
Realizar una función que concatene dos números enteros. (Int -> Int -> String)
-}

ej3 :: Int -> Int -> String
ej3 a b = show a ++ show b


{-Ejemplo 4
Realizar una función que indique si un número es múltiplo de otro. (Int -> Int -> Bool)
-}

-- mod
ej4v1 :: Int -> Int -> Bool
ej4v1 x y = if (mod x y > 0) then False else True

ej4v2 :: Int -> Int -> Bool
ej4v2 x y = mod x y == 0

ej4v3 :: Int -> Int -> Bool
ej4v3 x y = x `mod` y == 0


{-Ejemplo 5
Realizar una función recursiva que cuente cuantos dígitos tiene un número entero. (Int -> Int)
-}

--123
ej5 :: Int -> Int