-- hello = "welcome Gabri"
x = 2.0


isEven :: Int -> Bool 
isEven x = if mod x 2 == 0 then True else False

b :: Bool 
b = False
-- Collection Types - tuples with various Types collected together. 2-tuple (pair)
pikachu :: (String, Int)
pikachu = ("Pikachu", 25)

-- in Haskell a list must have all elements of same Type, but any length
-- list is the most important structure in Haskell
numbers :: [Int]
numbers = [19, -21, 7, 8, 598, -47732, 1, 4]

