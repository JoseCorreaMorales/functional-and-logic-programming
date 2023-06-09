data Color = Rojo | Verde | Amarillo | Azul | Negro | Blanco deriving(Eq, Show)

data Carro =  Carro {marca :: String, modelo :: String, precio :: Float} deriving (Show)

--let c1 = Carro {marca = "Chevrolet", modelo = "Silverado", precio = 400000}

funColor :: Color -> String

funColor x
    | x == Rojo = "Manzana"
    | x == Verde = "Limon"
    | x == Amarillo = "Platano"
    | x == Azul = "Mora"
    | x == Negro = "Zapote"
    | x == Blanco = "Coliflor"



funColor2 :: String -> (Color, Color)

funColor2 x
    | x == "Naranja" = (Rojo, Amarillo)
    | x == "Morado" = (Rojo, Azul)
    | x == "Verde" = (Azul, Amarillo)
    | x == "Rosa" = (Rojo, Blanco)
    | x == "Gris" = (Negro, Blanco)
    | x == "Cafe" = (Rojo, Verde)



descCarro :: Carro -> String
    
descCarro (Carro {marca = m, modelo = mo, precio = p}) = "El carro " ++ m ++ ", " ++ mo ++ "tiene un precio de $ " ++ show p ++ " presos"



main = do
    print(funColor Verde)
    print(funColor2 "Verde")
    print(descCarro )
    --print(descCarro c1)
