

--1 Escreva uma função addSuffix :: String -> [String] -> [String] usando list comprehension, para adicionar um dado sufixo às strings contidas numa lista. Exemplo:
addSuffix :: String -> [String] -> [String]
addSuffix x y = [a ++ x | a <- y]



--2 Escreva uma função countShorts :: [String] -> Int, que receba uma lista de palavras e retorne a quantidade de palavras dessa lista que possuem menos de 5 caracteres. Use recursão.
countShorts :: [String] -> Int
countShorts [] = 0
countShorts x = if (length (head x) < 5)
			then 1 + countShorts (tail x)
			else countShorts (tail x)

--3 Reescreva a função do exercício acima, desta vez usando list comprehension.
countShortslc :: [String] -> Int
countShortslc x = length [y | y <- x, (length y) < 5]