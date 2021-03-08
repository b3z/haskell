-- calculate all primes < n
prime :: Int -> [Int]
prime n = 1: (take n (p [2..n]))
    where p (x:xs) = x : p (filter (\f -> f `mod` x > 0) xs)
          p []     = []
