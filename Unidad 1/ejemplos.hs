{- ej1 :: Integer -> Integer -> Integer  
ej1 a b = max a b                    

ej2 :: Integer -> Integer -> Integer  
ej2 a b = if (a > b) then a else b 

ej3 :: Integer -> Integer -> Integer 
ej3 a b
    | a > b = a
    | b > a = b
    | otherwise = error "0"

hola1 :: String -> Integer -> String
ej4 a b =  if (b > 0) then a ++ hola a (b - 1) else ""

hola2 :: String -> Integer -> String
ej4 a b
    | if b > 0 = a ++ hola2 a (b - 1)
    | b == 0 = ""                                                   {-  -}


 hola3 :: String -> Integer -> String
hola3 _ 0 = ""
hola3 a b = a ++ hola3 a (b - 1)

concat :: Integer -> Integer -> String
ej3 a b = a ++ b 

concat :: Integer -> Integer -> String
concat a b = show a ++ show b  

esprimo1 :: Integer -> Integer -> Bool
esprimo x y = if (mod x y > 0) then False else True


-- ejemplos infijo y prefijo
esprimo2 :: Integer -> Integer -> Bool
esprimo2 x y = mod x y == 0

esprimo3 :: Integer -> Integer -> Bool
esprimo3 x y = x `mod` y == 0    -}




count_digits :: Integer -> Integer
count_digits a
count_digits a = if (a > 10) then 1 + count_digits(div a 10) else 1



main = do 
    print(count_digits 232)
   
