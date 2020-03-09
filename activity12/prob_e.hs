primeFactors :: Integer -> [Integer]
primeFactors n = [ k | k <- (divisors n), isPrime k]

isPrime :: Integer -> Bool
isPrime n = divisors n == [ 1, n]

divisors :: Integer -> [Integer]
divisors x = [ d | d <- [1 .. x], mod x d == 0 ]

main = print (primeFactors 16)
