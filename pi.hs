computePi :: Double -> Double
computePi n = help n 0.0
    where help n pi | n <  0 = pi
                    | n >= 0 = help (n-1) (pi + ((1/16.0**n)*(
                                                               4/(8*n+1)
                                                               -2/(8*n+4)
                                                               -1/(8*n+5)
                                                               -1/(8*n+6))))
