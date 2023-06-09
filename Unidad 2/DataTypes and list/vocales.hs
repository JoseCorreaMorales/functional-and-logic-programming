vocalesEnLista :: [Char] -> [Char]
vocalesEnLista xw = [x | x <- xw, x == 'a' || x == 'e' || x == 'i' || x == 'o' || x == 'u']

main = do
    print(vocalesEnLista "Hola")
    print(vocalesEnLista "uepoliiyfiooeuaea")


















{- vocalesEnLista xs = [x | x <- xs, x `elem` "aeiouAEIOU"] -}



















{- vocalesEnLista :: [Char] -> [Char]
vocalesEnLista xs = concatMap esVocal xs
  where esVocal x = if x `elem` "aeiouAEIOU" then [x] else []


vocalesEnLista :: [Char] -> [Char]
vocalesEnLista xs = [x | x <- xs, esVocal x]
  where esVocal x = x `elem` "aeiouAEIOU"


  vocalesEnLista :: [Char] -> [Char]
vocalesEnLista xs = concatMap (\x -> if x `elem` "aeiouAEIOU" then [x] else []) xs -}


