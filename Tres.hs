import Data.List (zip)

-- Definir la función que recibe una frase y devuelve un diccionario con las palabras y su longitud
lengthWords :: String -> [(String, Int)]
lengthWords sentence = zip words lengths
  where
    words = wordsInSentence sentence
    lengths = map length words

-- Función auxiliar para dividir una frase en palabras
wordsInSentence :: String -> [String]
wordsInSentence = words

main :: IO ()
main = do
    putStrLn "Frase original y longitudes de palabras:"
    -- Imprimir el resultado de la función lengthWords para la frase dada
    print $ lengthWords "Hello World in haskell"
