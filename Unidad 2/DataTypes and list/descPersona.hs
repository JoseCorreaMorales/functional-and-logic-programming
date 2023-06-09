data Persona = Persona {nombre :: String, apellidos :: String, edad :: Integer, altura :: Float, telefono :: Integer} deriving (Show)

descPersona :: [Persona] -> String
descPersona [] = ""
descPersona (Persona {nombre = n, apellidos = a, edad = e, altura = al, telefono = tel}: cs) = "La persona "++ n ++ " tiene " ++ show e ++ " años de edad, su altura es de " ++ show al ++ " metros y el número para contactarlo es " ++ show tel ++ " " ++ descPersona cs

main = do
    print(descPersona [Persona {nombre = "Jose", apellidos ="Correa Morales", edad = 21, altura = 2.0, telefono = 7861015488}, Persona {nombre = "Juan", apellidos ="Ramirez Perez", edad = 12, altura = 1.6, telefono = 7861004212}])





