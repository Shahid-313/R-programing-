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
<<<<<<< HEAD
#max vectors
=======

>>>>>>> 497de00f3d2ff8fcab019274caf87e1719814a36
mix1 <- c(1,T,2,F)
mix2 <- c(1,"a",2,"b")
mix3 <- c(1,"a",T)

<<<<<<< HEAD
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

#Factors
fac <- factor(c("yes","yes","no","yes","no"))
fac
#out1] yes yes no  yes no 
#Levels: no yes

table(fac)
#out no yes 
#    2   3 


unclass(fac)
#out[1] 2 2 1 2 1
# attr (,"levels")
#[1] "no"  "yes"

#the order the levels can be set using the levels arguments to factor()
fac1 <- factor(c("yes","yes","no","yes","no"),
               levels = c("yes","no"))
fac1
#out1] yes yes no  yes no 
#Levels: yes no

#Missing Values is.na() and is.nan() , A NaN value is also NA but the converse is not true
miss <- c(1,2,NA,10,3)
miss  # 1  2 NA 10  3
is.na(miss)
#out  FALSE FALSE  TRUE FALSE FALSE
is.nan(miss)
#out FALSE FALSE FALSE FALSE FALSE

miss1 <- c(1,2,NaN,NA,4)
miss1  #  1   2 NaN  NA   4
is.na(miss1)
#out FALSE FALSE  TRUE  TRUE FALSE
is.nan(miss1)
#out FALSE FALSE  TRUE FALSE FALSE


#DataFrame are use to store tabular data
data <- data.frame(day = 1:4, rain = c(T,T,F,F))
data
#out   day  rain
#   1   1  TRUE
#   2   2  TRUE
#   3   3 FALSE
#   4   4 FALSE
nrow(data)
#out 4
ncol(data)
#out 2
#Name R object can also have name
z <- 1:3
names(z) NULL
names(z) <- c("col_A","col_B","col_C")
z
#out col_A col_B col_C 
#     1     2     3 
z1 <- list(a = 1, b= 2, c= 3)
z1
#out $a
#[1] 1

#$b
#[1] 2

#$c
#[1] 3

m1 <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m1) <- list(c("a","b"), c("c","d"))
m1
#out   c d
#    a 1 3
#    b 2 4