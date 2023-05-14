module Add1List where
add1_list_comp :: [Integer] -> [Integer]
add1_list_comp [x] = [x + 1| x <- [x]]
