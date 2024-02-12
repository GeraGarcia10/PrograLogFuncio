-- Definimos la función de descuento, la cual toma dos valores
applyDiscount :: Float -> Float -> Float
applyDiscount price discount = price - price * discount / 100

-- Luego definimos la función de aplicar IVA que toma dos valores
applyIVA :: Float -> Float -> Float
applyIVA price percentage = price + price * percentage / 100

-- Definir la función que calcula el precio de una cesta aplicando una función a los precios iniciales
priceBasket :: [(Float, Float)] -> (Float -> Float -> Float) -> Float
priceBasket basket function = sum [function price discount | (price, discount) <- basket]

main :: IO ()
main = do
    -- Lista de tuplas con precios y descuentos para aplicar
    let descuentos = [(1000, 20), (500, 10), (100, 1)]
    
    -- Lista de tuplas con precios y porcentajes de IVA para aplicar
    let iva = [(1000, 20), (500, 10), (100, 1)]
    
    putStrLn "El precio de la compra tras aplicar los descuentos es: "
    -- Calcular el precio de la compra aplicando descuentos y mostrarlo en consola
    print $ priceBasket descuentos applyDiscount
    
    putStrLn "El precio de la compra tras aplicar el IVA es: "
    -- Calcular el precio de la compra aplicando IVA y mostrarlo en consola
    print $ priceBasket iva applyIVA
