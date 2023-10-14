-- hello = "welcome Gabri"


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

-- isPositive :: Int 
-- isPositive x = [x*2 | x <- [1..10], x*2 >= 12]  

-- isEven x =
--     if mod x 2 == 0
--     then True
--     else False

-- Variant Type

data StarterPokemon
    = Bulbasaur
    | Charmander
    | Squirtle
    | Pikachu
    deriving (Eq, Show)

-- deriving Eq, Show  automatically generates the instance boujnd to Eq

-- x :: StarterPokemon
-- x = Charmander

-- Unit: the interpreter understand from the context
data Unit = Unit

-- this the description
u :: Unit   
-- this is the value, the interpreter understands it
u = Unit   

x :: Float 
x = 3.1

z :: Float
z = 4.5
-- Types, common : Int, Char,  Bool, Float, Double, String, ()
--Typeclasses  - abstraction types
-- {Num  = (-)}, (+), (*), ...}
-- { Eq =  ( = ), ( /= ), all types above can be Eq, but not all e.g. functions}
-- { Ord =  all ok }
-- { Bounded =   max / min all types }
-- { Enum = Int  - convert to and from int -  }

-- Show vs Read is the same as Enum
-- show to screen vs read to screen |
-- Enum convert to and from int  

f :: Int 
f = read "29"

-- Conditional

getStarterPokemon :: String -> StarterPokemon
getStarterPokemon  t =
    if t == "grass"
        then Bulbasaur
        else if t == "fire"
            then Squirtle
            else if t == "water"
                then Pikachu
                else Charmander

-- I do the same using Guards; otherwise -> catch all
-- getStarterPokemon :: String -> StarterPokemon
-- getStarterPokemon  t
--     t == "grass" = Bulbasaur
--     t == "fire" = Squirtle
--     t == "water" = Pikachu
--     otherwise = Charmander   

-- using Case Expressions (different from Switch)  _ (catch all)
-- getStarterPokemon :: String -> StarterPokemon
-- getStarterPokemon  t = case t of 
--     "grass" -> Bulbasaur
--     "fire"  -> Squirtle
--     "water" -> Pikachu
--     -       -> Charmander

-- Function Patterns (see slides)
-- It is the same as Case Expression, but different syntax