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

isPositive :: Int 
isPositive x = [x*2 | x <- [1..10], x*2 >= 12]  

isEven x =
    if mod x 2 == 0
    then True
    else False

-- Variant Type

data StarterPokemon
    = Bulbasaur
    | Charmander
    |Squirtle


-- Unit: the interpreter understand from the context
data Unit = Unit

-- this the description
y :: Unit   
-- this is the value, the interpreter understands it
y = Unit   


-- ++ concatenate strings
