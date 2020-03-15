bla s = [ c | c <- s, not (elem c "aeiou")]

main = print(bla "hello")
