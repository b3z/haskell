-- calculate all primes < n
prime :: Int -> [Int]
prime n = take n (p [1..n])
    where p (x:xs) = x : p (filter (\f -> f `mod` x > 0) xs)
