-- [salida, conjuto de entrada, condicion]


dados :: Int -> Int 



main = do
    print([8 * x | x <- [0..10]])
    print([x | x <- [0..20], mod x 2 == 0])
    print([2 ^ x | x <- [0..10], 2 ^ x <= 100])



    
    print([[a, b], a <- [1..10], b <- [1..10], a + b  == 12])