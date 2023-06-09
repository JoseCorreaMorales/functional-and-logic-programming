par :: Int -> String 
parv2 :: Int -> String 
parv3 :: Int -> String

par n 
    | n == 0 = "es par"
    | n == 1 = "es impar"
    | otherwise = par(n - 2)


parv2 x = if x > 1 then parv2(x - 2) else if x == 0 then "es par" else "es impar"


parv3 0 = "es par"
parv3 1 = "es impar"
parv3 x = parv3(x - 2)

main = do
    print(par 6)