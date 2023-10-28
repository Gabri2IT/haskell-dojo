
map :: (a -> b) -> [a] -> [b]   

-- map is designed to operate on lists, using Head and Tail
-- map toUpper "Vulpix"     gives "VULPIX"

map' :: (a -> b) -> [a] -> [b]   
map' _ []      = []
map' f (h : t) = f h : map' f t

-- map :: (a -> b) -> [a] -> [b] 
-- filter :: (a -> Bool) -> [a] -> [_] 
-- The Bool output determines if the result will be returned to the next step

    