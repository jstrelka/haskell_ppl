-- program will return the divisors of a given number

divisors :: Integer -> [Integer]

divisors x = [ d | d <- [1 .. x], mod x d == 0 ]

main = print(divisors 36)