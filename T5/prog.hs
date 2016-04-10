

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

--4 Escreva uma função ciclo :: Int -> [Int] -> [Int] que receba um número N e uma lista de inteiros, retornando uma nova lista com N repetições da lista original, conforme o exemplo abaixo:
ciclo :: Int -> [Int] -> [Int]
ciclo 0 x = []
ciclo n x = x ++ ciclo (n-1) x

--5 


--6
--[(2,3),(2,5),(4,5)] Pares de 1 a 5 e Impares de x+1 a 6
--["lazyfrog","lazydog","bigfrog","bigdog"] Junta a primeira lista de strings com a segunda, como um for dentro de outro for
--"p-r-l-l-p-p-d-" Tira as vogais e coloca um - no lugar

--7