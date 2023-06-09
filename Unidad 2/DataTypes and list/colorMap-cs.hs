data Carro =  Carro {marca :: String, modelo :: String, precio :: Float} deriving (Show)

let c1 = Carro {marca = "Chevrolet", modelo = "Silverado", precio = 400000}


listaCarro :: [Carro] -> String
listaCarro [] = ""
listaCarro = (Carro {marca = m, modelo = mo, precio = p}: cs) = "El carro " ++ m ++ ", " ++ mo ++ "tiene un precio de $ " ++ show p ++ " presos \n" ++ listaCarro cs



-- lo del lado izq de : es el pri,er lem     xs

mostrar = do
    putStrLn "lista de carros"
    putStrLn (listaCarro [c1,c2,c3,c4])


main = do
    print(map descCarro)
    print(descCarro [c1,c2, c3])