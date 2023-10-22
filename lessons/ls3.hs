x :: [Int]
x = [ 1, 2, 3 ,4]   


y :: [Char]
y = ['a', 'b', 'c', 'd']

-- [a]  -- it is not known yet (Type)

-- List of 'something, we call a
-- :t reverse
-- reverse :: [a] -> [a] -- it is not a Type because Type are 
                     -- capital. a is a parameter

-- It is useful because one function can be used repeatedly
-- without defining various function separately
-- "parametric polymorphism"

-- reveerse_Int :: [Int] -> [Int]
-- reverse_Cha :: [Char] -> [Char]


-- reverse x  

type Pokemon = (String, Int)

pikachu :: Pokemon 
pikachu = ("Pikachu", 25)

vulpix :: Pokemon
vulpix = ("Vulpix", 37 )

squirtle : Pokemon
squirtle = ("Squrtle", 7)


blastoise :: Pokemon
blastoise = ("Blastoise", 9)

-- reverse pikachu

party :: [Pokemon]  
party = pikachu : (vulprix : (squirtle : blastoise : []))

--party = ["Bulbasaur", "Charmander", "Charizard"] 

-- reverse party
-- ["Charizard","Charmander","Bulbasaur"]


-- (:)  -- cons  it takes a list and output a list
-- input = element (head) and list (tail)
-- ouutput = list
-- head + tail = list
-- tail is the list except the head, the rest. It is a list
-- as well

-- 1 : [2 , 3, 4]
-- [1,2,3,4]

-- party =
--     "Bulbasaur" : ["Charmander", "Charizard"] 
--     "Bulbasaur" : ("Charmander" : ["Charizard"])
--     "Bulbasaur" : ("Charmander" : ("Charizard" : []))
--  this is the real lis: "Bulbasaur" : ("Charmander" : ("Charizard" : []))

-- (n, i) =  ("Pikachu", 25)   #haskell deconstruct the tuple in 2-things because it knows
-- it is a tuple. I can easily catch what is inside the tuple.

-- (x, y, z) = ('$', false, "hello world")  #haskell understands automatically the type 
-- check with :t x

--the same works with list  -- I get easily elements of a list
[pikachu, vulpix, squirtle, blastoise]

-- : connect with a list, not a tuple!

h1 : (h2 : (h3 : (h4 :t))) = party  

-- in case I do not care about other elem except h1
h1 : (_ : (_ : (_ :t))) = party

-- (n, i) : t = party
-- i    gives  25    #it is Pikachu
--  the structure of 'party' counts

-- -: (((v : _), v_id): _) = party


-- how to deconstruct the -n element





-- x : y = [ "abc", "def","ghi", "pqr" ]

x : y = [7]  -- y is []

-- I check if a function is a Singleton
isSingleton :: [a] -> Bool 
isSingleton (x : []) = True    -- the tail must be null
isSingleton_         = False   -- otherwise is False
-- isSignleton []   False
-- isSingleton ["Pikachu"] True



isNull :: [a -> Bool]
isNull [] = True 
isNull _ = False

--isNull []   True
--isNull [7]  False

--there is already a 'null' func in haskell : null[]

-- first :: (a, b) -> a  -- first is NOT the first elem; it the first Component Type

-- second :: (a, b)
-- second "Pikachu"   ->   25

-- Homework
-- A func tripe tuple and returns the 3.elem

