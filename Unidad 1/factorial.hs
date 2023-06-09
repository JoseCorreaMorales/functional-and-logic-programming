fac :: Integer -> Integer
fac n = if (n == 0) then 1 else n * fac(n - 1)

main = do
    print(fac 5)