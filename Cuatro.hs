import Data.Char (toUpper)
import Data.List (zip)

-- Definir la función que devuelve la calificación correspondiente a una nota
grade :: Float -> String
grade score
    | score >= 95 && score <= 100 = "Excelente"
    | score >= 85 && score <= 94 = "Notable"
    | score >= 75 && score <= 84 = "Bueno"
    | score >= 70 && score <= 74 = "Suficiente"
    | otherwise = "Desempeno insuficiente"

-- Definir la función que recibe un diccionario de asignaturas y notas y devuelve otro con las asignaturas en mayúsculas y las calificaciones
applyGrade :: [(String, Float)] -> [(String, String)]
applyGrade scores = zip subjects grades
  where
    subjects = map (map toUpper . fst) scores -- Convertir las asignaturas a mayúsculas
    grades = map (grade . snd) scores

main :: IO ()
main = do
    putStrLn "Asignaturas y calificaciones correspondientes:"
    -- Imprimir el resultado de la función applyGrade para el diccionario de asignaturas y notas dado
    print $ applyGrade [("Matematicas", 96), ("Fisica", 82), ("Quimica", 74), ("Economia", 88), ("Historia", 65), ("Programacion", 95)]
