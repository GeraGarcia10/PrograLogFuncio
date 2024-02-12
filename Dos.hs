-- Definir la función que aplica una función a todos los elementos de una lista
aplicaFuncionLista :: (a -> b) -> [a] -> [b]
aplicaFuncionLista funcion lista = map funcion lista

-- Definir la función cuadrado que eleva al cuadrado un número
cuadrado :: Num a => a -> a
cuadrado n = n * n

main :: IO ()
main = do
    putStrLn "Aplicar la funcion cuadrado a la lista [3, 4, 9, 8]:"
    -- Aplicar la función cuadrado a la lista y mostrar el resultado en consola
    print $ aplicaFuncionLista cuadrado [3, 4, 9, 8]


