
_SIZE_ :: Int
_SIZE_ = 3


d :: [Char]
d =  "House"


-- boomBangs :: Integral a => [a] -> [[Char]]
-- boomBangs x = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
--   ghci> boomBangs [7..13]  
-- ["BOOM!","BOOM!","BANG!","BANG!"]   

removeNonUppercase :: [Char] -> [Char]  
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]   
-- removeNonUppercase ['A', 'b', 'Z']

third :: (a, b, c) -> c  
third (_, _, z) = z  
-- third (2,3,4)

-- cylinder :: (RealFloat a) => a -> a -> a  
-- cylinder r h = 
--     let sideArea = 2 * pi * r * h  
--         topArea = pi * r ^2  
--     in  sideArea + 2 * topArea  

isEven :: Int -> Bool 
isEven x = if mod x 2 == 0 then True else False

-- isUEven :: Int -> Bool 
-- isUEven y = if mod y 2 == 0 | mod y 2 /=0

-- identity :: Char 
-- identity x = x
-- identity = 'I'
-- toUpper (identity 'i')

flip' :: (a -> b -> c) -> b -> a -> c  
flip' f y x = f x y  
-- flip' zip [1,2,3,4,5] "hello"

    -- multThree :: (Num a) => a -> a -> a -> a  
    -- multThree x y z = x * y * z  

-- type Point3D = (Int, Int, Int)  
-- getDepth :: Point3D -> Int 
-- getDepth (x y z) = z 

addTuple :: (Int, Int, Int) -> (Int, Int, Int) -> (Int, Int, Int)  
addTuple (x1, y1, z1) (x2, y2, z2) = (x1 + x2, y1 + y2, z1 + z2)  

fst3 :: (Int, Int, Int) -> Int  
fst3 (x, _, _) = x  

snd3 :: (Int, Int, Int) -> Int  
snd3 (_, y, _) = y  

thd3 :: (Int, Int, Int) -> Int  
thd3 (_, _, z) = z  

-- fst3 (1,2,3)

-- snd3 (1,2,3)

--)    

-- describeContents :: Show a => [a] -> String 
-- describeContents (x:xs) = concat [
--     "The head is "
--     , show x 
--     , " and the tail is "
--     , show xs 
--     ]
-- describeContents [] = " The list is empty "    