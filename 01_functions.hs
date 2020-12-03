doubleMe :: Int -> Int
doubleMe x = x + x 

doubleUs :: Int -> Int -> Int
doubleUs x y = x*2 + y*2

-- only double a number is it is smaller than 100. Else give back the number.
doubleSmallNumber :: Int -> Int
doubleSmallNumber x = if x > 100 then x else x*2  


-- NOTE 
-- functions can't begin wit an upper case letter
