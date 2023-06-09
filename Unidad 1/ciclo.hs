ciclo :: String -> Integer -> String

ciclo string n =  concat [string ++ "\n" | i <-[1,2..n]]

main = do
    print(ciclo "Hola" 5)