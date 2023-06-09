main = do 
  let msg = "Hello"
  let msg2 = "Hello2"
  esIgual num1 num2 = if num1 /= num2 then msg else msg2 
  print(esIgual 2 5)