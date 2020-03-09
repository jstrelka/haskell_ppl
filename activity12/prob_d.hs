totientPhi :: Integer -> Int
totientPhi m = length [ r | r <- [1 .. m], coPrime m r ]


coPrime :: Integer -> Integer -> Bool
coPrime a b 
    | Main.gcd a b == 1 = True
    | otherwise = False


gcd :: Integer -> Integer -> Integer
gcd a b
    | b == 0 = a
    | a < b = Main.gcd b a
    | otherwise = Main.gcd b (a `mod` b)


main = print(totientPhi 24)