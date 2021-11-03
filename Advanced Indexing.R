x <- c(1,2,3,4,5,8,4,9,7)
x[c(T,F)] #Specifiy a pattern
x[x<3] #Specifiy a condition
x[2] <- 0 #Reassignment
x[x>5] <- 0 #Modifiy anything greater than five
x <- x[1:4] #truncate to first 4 elements
x <- NULL #Delete a vector
# + Addition
# - Subtraction
# * Multiplication
# / Division
# ** Exponent
# x%%y Mod (5 mod 2 = 1)
# x%/% Integer division (5%/%2 = 2)
# != not equal to
# !x not x
# x|y x or y
# x&y x and y
# isTURE(x) #test if x is ture 
x <- c(1:10)
x[(x>8)| ((x<5))]
x[(x>4)&(x>6)]