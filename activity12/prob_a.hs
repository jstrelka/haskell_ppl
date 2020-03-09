-- program will return the prime of a given number

isPrime :: Integer -> Bool
isPrime n = divisors n == [ 1, n]


divisors :: Integer -> [Integer]
divisors x = [ d | d <- [1 .. x], mod x d == 0 ]


-- ******** Different interpretations ********
isPrime2 :: Integer -> Bool
isPrime2 n 
    | n <= 1 = False
    | n == 2 = True
    | otherwise = null [k | k <- [2..n-1], n `mod` k ==0 ]

main = print(isPrime2 36)