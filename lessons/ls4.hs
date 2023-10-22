-- h : (h' : t) = [1, 2, 3, 4, 5, 6, 7]

-- what is h, h', t ?   -> Check !!

-- (x, h:t) = [ 71, "ABC"]
-- what is x, h, t ?   -> Check !!

third :: [a] -> a
third (_ : (_: (x : _))) = x 
-- third _                  - error "list too small"
--- TEST IT!

--- Scope
x :: String
x = "Pikachu"

-- let x = 2 in 7 ^ x     => 49

hyp :: (Float, Float) -> Float
hyp (x, y) = sqrt (x' + y')
    where x' = x * x 
          y' = y * y
-- hyp (1, 1)

fizzbuzz :: Int -> String 
fizzbuzz x
    | isDiv x 3 && isDiv x 5 = "Fizzbuzz"
    | isDiv x 3                = "Fizz"
    | isDiv x 5                = "Buzz"    
    | otherwise                = show x   
    where isDiv a b = mod a b == 0


greet :: String -> String 
greet trainer = 
    let city = "Varese" 
    in "Welcome to " ++ city ++ ",  " ++ trainer  ++ "!!"
-- trainer = "gabri"

-- [1, 2, 3, 4, 5, 6, let x = 3 in x + 8]
-- it gives      [1,2,3,4,5,6,11]

printMove :: Pokemon -> Move -> String 
printMove p m = p ++ "used " ++ m ++ "!"
