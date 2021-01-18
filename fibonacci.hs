-- calculate the fibonacci row infinite
fibonacci :: [Integer]
fibonacci = f 0 1
    where f x y = x : f y (x+y) 

-- take 10 fibonacci
