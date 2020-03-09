import Data.List

desort :: [Integer] -> [Integer]
desort = reverse.sort

numwords = length.words

main = do
    let lst = [2,4,1,8,7,5,2,9,1]
    print (desort lst)
    let str = "This is a test for numwords\nLet's see if it works!"
    print (numwords str)