fact :: Integer -> Integer 
fact n | n == 0 = 1 
       | n /= 0 = n * fact (n-1) 
main = do 
   putStrLn "El factorial de 5 es:"  
   print (fact 5) 