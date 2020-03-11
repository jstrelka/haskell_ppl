goldbach :: Integer -> [(Integer, Integer)]
goldbach n = [ (p1, p2) | n `mod` 2 == 0, p1 <- [2 .. n-1], isPrime p1, p2 <- [p1 .. n-1], isPrime p2, p1 + p2 == n ]

isPrime :: Integer -> Bool
isPrime n = divisors n == [ 1, n]

divisors :: Integer -> [Integer]
divisors x = [ d | d <- [1 .. x], mod x d == 0 ]

main = print(goldbach 12)