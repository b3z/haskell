-- computes the e to the rank of n
euler :: Int -> Double
euler n = e n 0
    where e n a | n <  0 = a
                | n >= 0 = e (n-1) (a + (1.0/(fac n)))

-- calculates the factorial of a number
fac :: Int -> Int
fac i = f i 1 
    where f i a | i == 0 = a
                | i >  0 = f (i-1) (a*i)

