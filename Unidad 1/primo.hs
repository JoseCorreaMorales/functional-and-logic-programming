primo :: Int -> Bool

--primo x = if (x `mod` x == 0 && x `mod` 1 == 0) then True else False
primo x = if (mod x 2 == 1) then True else False

divisores :: Int -> Int -> Int

divisores _ 1 = 1
divisores x y
    | mod x y == 0 = 1





main = do 
    print(primo 8)