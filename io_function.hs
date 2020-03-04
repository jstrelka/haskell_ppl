main = do 
    putStr "What's your name? \n"
    name <- getLine
    putStrLn ("Nice to meet you " ++ name)