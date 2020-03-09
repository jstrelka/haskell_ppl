gcd :: Integer -> Integer -> Integer
gcd a b
    | b == 0 = a
    | a < b = Main.gcd b a
    | otherwise = Main.gcd b (a `mod` b)

main = print(Main.gcd 10 5)