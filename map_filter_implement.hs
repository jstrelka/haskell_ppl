-- will implement map function

map f l = [ f e | e <- l ]

-- will implement filter 

filter f l = [ e | e <- l, f e ]