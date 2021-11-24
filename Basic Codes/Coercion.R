#Coercion 
#Either implicit
a <- c(1.7, "a") # character 
b <- c(TRUE, 2) # numeric
c <- c("a", TRUE) # character
#Or Explicit
x<-0:6
class(x) #int
s <- as.numeric(x)
class(s) #num
v<- as.logical(x)
class(v) #Logic
w <- as.character(x) #Char
class(w)
