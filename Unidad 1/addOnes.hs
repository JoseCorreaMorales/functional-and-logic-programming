-- crea la siguiente salida 11+11111
addOnes :: Int -> Int -> String

addOnes n1 n2
    | n1 > 0 = show 1 ++ addOnes (n1 - 1) n2
    | n1  == 0 = "+" ++ addOnes (n1 - 1) n2
    | n2 > 0 = show 1 ++ addOnes n1 (n2 - 1) 
    | otherwise = ""


addOnes2 :: Int -> Int -> String
addOnes2 n1 n2 = 
  if n1 > 0 then
    show 1 ++ addOnes2 (n1 - 1) n2
  else if n1 == 0 then
    "+" ++ addOnes2 (n1 - 1) n2
  else if n2 > 0 then
    show 1 ++ addOnes2 n1 (n2 - 1)
  else
    ""
    

main = do
    print(addOnes 2 5)
    print(addOnes2 2 5)




{-
11+11111
 unos :: Int -> Int -> String

unos n1 n2 = if (n1 > 0) then show 1 ++ unos n2 (n1 - 1) else (n2 > 0) show 1 ++ unos n1 (n2 - 1)  -}

{- 
addOnes n1 n2
    | n1 > 0 = show 1 ++ addOnes (n1 - 1) n2
    | n1 == 0 = show "+"
    | n2 > 0 = show 1 ++ addOnes n1 (n2 - 1) 
    | otherwise = ""

 -}