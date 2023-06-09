{- escriba una funcion que muestre las numeros naturales menores o iguales que un numero n determinado, que
no sea multiplo ni de 3 ni de 7 -}

fun :: Int -> String

fun x
    | x == 0 = ""
    | x == 1 = "1."
    | mod x 3 == 0 || mod x 7 == 0 = fun (x - 1) 
    | otherwise = show x ++ ", " ++ fun(x - 1)

main = do 
    print(fun 10)