import Data.List (foldl')

-- Definir la función que recibe dos valores y calcula la suma del primero más el cuadrado del segundo
sumSquare :: Float -> Float -> Float
sumSquare x y = x + y ^ 2

-- Definir la función que calcula el módulo de un vector
module' :: [Float] -> Float
module' v = sqrt $ foldl' sumSquare 0 v

main :: IO ()
main = do
    putStrLn "Modulo del vector (3, 4):"
    -- Imprimir el resultado de la función module' para el vector (3, 4)
    print $ module' [3, 4]

    putStrLn "Modulo del vector (1, 2, 3):"
    -- Imprimir el resultado de la función module' para el vector (1, 2, 3)
    print $ module' [1, 2, 3]
