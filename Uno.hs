import System.IO

--  
calcular :: String -> Int -> [(Int, Double)]
calcular funcion n = [(i, aplicarFuncion i) | i <- [1..n]]
  where
    aplicarFuncion x =
        case funcion of
            "sin" -> sin (fromIntegral x)
            "cos" -> cos (fromIntegral x)
            "tan" -> tan (fromIntegral x)
            "exp" -> exp (fromIntegral x)
            "log" -> log (fromIntegral x)
            _     -> error "Función no reconocida"

-- Definir la función principal que solicita al usuario la función y el valor, y muestra la tabla resultante
calculadoraCientifica :: IO ()
calculadoraCientifica = do
    putStr "Introduce la función a aplicar (sin, cos, tan, exp, log): "
    funcion <- getLine
    putStr "Introduce un valor entero: "
    valor <- readLn :: IO Int

    -- Verificar que el valor sea positivo
    if valor > 0
        then do
            let resultado = calcular funcion valor
            putStrLn $ "Tabla de resultados para la función " ++ funcion ++ ":"
            putStrLn "Entero\tResultado"
            mapM_ (\(i, res) -> putStrLn $ show i ++ "\t" ++ show res) resultado
        else
            putStrLn "El valor debe ser un entero positivo."

main :: IO ()
main = calculadoraCientifica
