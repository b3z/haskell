-- computes the e to the rank of n
euler :: Int -> Double
euler n = e n 0
    where e n a | n <  0 = a
                | n >= 0 = e (n-1) (a + (1.0/fromIntegral (product [1..n])))

