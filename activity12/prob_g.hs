-- get two integers as range use as range of potential numbers
-- call isprime to check if is prime and add to list if it is

primeRange :: Integer -> Integer -> [Integer]
primeRange a b = [ p | p <- [a .. b], isPrime p ]

isPrime :: Integer -> Bool
isPrime n = divisors n == [ 1, n]

divisors :: Integer -> [Integer]
divisors x = [ d | d <- [1 .. x], mod x d == 0 ]

main = print(primeRange 45 56)