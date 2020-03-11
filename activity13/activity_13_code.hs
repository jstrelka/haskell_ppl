-- Prob b.
secondTwoLast lst = (last . init) lst

-- Prob c.
elementAt lst k = lst!!(k - 1)

-- Prob f.
middle lst  
    | length lst < 3 = []
    | otherwise = (init . tail) lst

-- Prob g. 
isPalindrome word
    | length word <= 1 = True
    | head word /= last word = False
    | otherwise = isPalindrome (middle word)

myall p lst = and [ p el | el <- lst ]

main = do 
    let lst = [1, 3, 4, 5]
    print (myall odd lst)