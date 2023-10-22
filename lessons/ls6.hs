
map :: (a -> b) -> [a] -> [b]   

-- map is designed to operate on lists, using Head and Tail
-- map toUpper "Vulpix"     gives "VULPIX"

map' :: (a -> b) -> [a] -> [b]   
map' _ []      = []
map' f (h : t) = f h : map' f t
