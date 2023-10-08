

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

-- string is also a list. It is = to [Char]
a :: [Char]
a = [ 'H', 'o', 'u', 's', 'e']

-- in Haskell only it is allowed to have a string as a list of Char
c :: [String]
c =  "House"

d :: [Char]
d =  "House"

-- I can define my own data Type
bulbasaur :: ([Char], Int)
bulbasaur =  ("Bulbasaur", 1)

-- instead of bulbasaur type which has no meaning I define Type Pokemon
type Pokemon = ([Char], Int)
pikachu :: Pokemon
pikachu = ("Pikachu", 25)

ian :: Pokemon
ian = ("Ian", 12)

-- another type Person -> it is actually another name for the type Pokemon
-- Type Synonyms
type Person = ([Char], Int)
gabriele :: Pokemon    #it is not a mistake for Haskell! becasue I just changed the name, but it is the same type
gabriele = ("Gabriele", 1)

data Color = Red | Green | Blue

