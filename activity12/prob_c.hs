coPrime :: Integer -> Integer -> Bool
coPrime a b 
    | Main.gcd a b == 1 = True
    | otherwise = False


gcd :: Integer -> Integer -> Integer
gcd a b
    | b == 0 = a
    | a < b = Main.gcd b a
    | otherwise = Main.gcd b (a `mod` b)


main = print(coPrime 10 3)