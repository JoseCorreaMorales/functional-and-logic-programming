main = do
    --[expr | var <- lista, cond]
{- let lista = [x| x <- [1..20], x `mod` 2 == 1] -}
let lista = [x^2 | x <- [0..20]]
print(lista)
 