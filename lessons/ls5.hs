-- :t take
-- take :: Int -> [a] -> [a]
-- take :: Int -> [a] -> [a]   -- it takes Int and return a function    take :: Int -> ([a] -> [a])
f = take 4

-- ['A' .. 'Z']
-- f ['A' .. 'Z']

-- Recursive Function
-- definition a function by calling itself

[a, b, c, d] = a : [a, b, c]    -- define a list through the list itself

-- length [ 'A' .. 'Z']

-- factorial 4 = 4 * 3 * 2 *1  can be defined as
-- factorial 3 =      3 * 2 *1
-- factorial 4 = 4 * factorial 3
factorial :: Int -> Int 
factorial 0 = 1
factorial 1 = 1
factorial n = n * factorial (n - 1) 


-- ITERACTIVE RECURSION

-- length :: [a] -> Int   -- it is different than factorial: 1- it is not Int, can be any type. 2- I need to invent a formula

-- length [p, q, x, y, z] = 5   I can also write as follows
-- length (p : [q, x, y, z]) = 5
-- length ([q, x, y, z]) = 4
-- length [p, q, x, y, z] = 1 + length ([q, x, y, z]) = 5  it is : Head + Tail
-- length (h : t) = 1 + length t

-- = 1 + (1 + (1 + (1 + (1 + length []))))


-- fibonacci ->  HOMEWORK!

--  ++   concat  

-- append :: [a] -> [a] -> [a]
-- append [a, b, c] [d, e, f] = [ a, b, c, d, e, f]
-- append (a : [b, c] (d : [e, f]) = (a : [b, c, d, e, f]
-- append [a, b, c] [d, e, f] = a : (append[b, c] [d, e, f])
-- append (h : t) y = h : (append t y)
-- last step       append []  y = y



append :: [a] -> [a] -> [a]
append (h : t) y = h : (append t y)
append []  y = y


-- sum' :: [Int] -> Int 
-- sum' (h:t) = h + (sum t)

-- ITERATIVE RECURSION

-- int s = 0
-- for (int i = 0; i < x.length; i++) {
--     s = s + x[i]
-- } 
-- return s;
sum' :: [Int] -> Int                           -- sum
sum' x = loop 0 x 
    where   loop s []      = s                 -- trace ("loop " ++ show s ++ "[]") s 
            loop s (h : t) = loop (s + h) t    -- no loop involved, just the name! 2 inputs for this helper 'loop': the first represents 's'


            -- isPrime n = undefined

-- isPrime(n) {
--     for (int i = 2; i < n; i++) {
--         if (n % i == 0)
--             return False;
--         else
--             continue;
--     }
-- return True;
-- }

isPrime :: Int -> Bool 
isPrime n = loop 2 
    where
    loop i 
        | i == n       = True 
        | mod n i == 0 = False
        | mod n i /= 0 = loop (i + 1)
