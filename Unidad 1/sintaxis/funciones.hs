add :: Integer -> Integer -> Integer   --declaración de la función
add x y =  x + y                       --fdefinición de la función 

main = do 
   putStrLn "La suma de los dos numeros es:"  
   print(add 2 5)    --Llamando a la función