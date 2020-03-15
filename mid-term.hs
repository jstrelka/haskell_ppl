myDiv k lst
  | k == 0 = lst
  | otherwise = [ el / k | el <- lst ]

main = print(myDiv 2 [1 .. 5])
