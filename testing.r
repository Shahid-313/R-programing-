# this is from git
print("Hello from github")

name = ("Shahid")
version = "Rstudio - in writing"

print(name)
print("These lines has been written in Rstudio")

#vectors
vec1 <- c(1,2,3)
vec2 <- c("a","b","c")
vec3 <- c(T,F,T)
#max vectors
mix1 <- c(1,T,2,F)
mix2 <- c(1,"a",2,"b")
mix3 <- c(1,"a",T)

#Explicit Coercion
x <- 0:10
class(x) #"integer"

as.numeric(x)#output 0  1  2  3  4  5  6  7  8  9 10
as.logical(x)#output FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
as.character(x)#output "0"  "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10"
as.complex(x)#output 0+0i  1+0i  2+0i  3+0i  4+0i  5+0i  6+0i  7+0i  8+0i  9+0i 10+0i


#matrix 
m <- matrix(1:6, nrow = 3 , ncol = 2)
#output     [,1] [,2]
#    [1,]    1    4
#    [2,]    2    5
#    [3,]    3    6

#matrices can be created by column-binding or row-binding with cbind() and rbind()
x <- 1:3
y <- 10:12
cbind(x, y)
#output     x  y
#      [1,] 1 10
#     [2,] 2 11
#     [3,] 3 12
rbind(x,y)
#output  [,1] [,2] [,3]
#     x    1    2    3
#    y   10   11   12
#List
x <- list(1, "a", TRUE, 1+4i)
x
#output[[1]]
#[1] 1

#[[2]]
#[1] "a"

#[[3]]
#[1] TRUE

##[[4]]
#[1] 1+4i

