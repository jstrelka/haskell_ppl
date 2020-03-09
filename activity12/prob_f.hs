primeFactorsMult :: Integer -> [ (Integer,Integer) ]
primeFactorsMult n = [(p, ndiv n p) | p <- primeFactors n]

ndiv :: Integer -> Integer -> Integer
ndiv a b 
    | mod a b /= 0 = 0
    | otherwise = 1 + ndiv (div a b ) b

primeFactors :: Integer -> [Integer]
primeFactors n = [ k | k <- (divisors n), isPrime k]

isPrime :: Integer -> Bool
isPrime n = divisors n == [ 1, n]

divisors :: Integer -> [Integer]
divisors x = [ d | d <- [1 .. x], mod x d == 0 ]

main = print (primeFactorsMult 810)