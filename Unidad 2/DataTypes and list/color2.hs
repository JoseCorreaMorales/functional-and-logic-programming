
data Carro =  Carro {marca :: String, modelo :: String, precio :: Float} deriving (Show)

let c1 = Carro {marca = "Chevrolet", modelo = "Silverado", precio = 400000}

let c2 = Carro {marca = "Toyoya", modelo = "toyota IV", precio = 180000}

let c3 = Carro {marca = "Chevlolet", modelo = "Modelo RAM", precio = 250000}



descCarro :: *Carro -> String
    
descCarro (Carro {marca = m, modelo = mo, precio = p}) = "El carro " ++ m ++ ", " ++ mo ++ "tiene un precio de $ " ++ show p ++ " presos"



main = do
    print(descCarro c1 c2 c3)
