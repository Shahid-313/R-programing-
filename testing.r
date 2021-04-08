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



#Subsetting
x <- c("a","b","c","c","d","a")
x[1]
#out "a"
x[2]
#out "b"
x[1:4]
#out "a" "b" "c" "c"
x[x > "a"]
#out "b" "c" "c" "d"
u <- x > "a"
u
#out FALSE  TRUE  TRUE  TRUE  TRUE FALSE
x[u]
#out "b" "c" "c" "d"

#Subsetting a matrix
x <- matrix(1:6, 2, 3)
x
#out      [,1] [,2] [,3]
#  [1,]    1    3    5
# [2,]    2    4    6

x[1, 2]

#out 3

x[2, 1]

#out 2

x[1,]

#out 1 3 5

x[, 2]

#out 3 4

x[1, 2, drop=FALSE]

#out     [,1]
# [1,]    3

x[1, , drop=FALSE]

#out    [,1] [,2] [,3]
#[1,]    1    3    5

#Subsetting List
x <- list(weekdays = 1:4, rain_prob = 0.6)
x
#out $weekdays
#[1] 1 2 3 4

#$rain_prob
#[1] 0.6

x[1]

#out $weekdays
# [1] 1 2 3 4

x[[1]]

#out  1 2 3 4

x$rain_prob

#out  0.6

x["rain_prob"]

#out 0.6

x <- list(weekdays = 1:4, rain_prob = 0.6, item = "umbrella")
x

#out $weekdays
#[1] 1 2 3 4

# $rain_prob
# [1] 0.6

# $item
# [1] "umbrella"
x[c(1, 3)]

#out $weekdays
# [1] 1 2 3 4

# $item
# [1] "umbrella"
name <- "weekdays"
x[[name]]

#out [1] 1 2 3 4

x$name
#out NULL

x$weekdays
#out 1 2 3 4

#Subsetting Nested Elements of a List
x <- list(a = list(10,12,14), b = c(3.14, 2.81))
x
#out $a
# $a[[1]]
# [1] 10

# $a[[2]]
# [1] 12

# $a[[3]]
# [1] 14


# $b
# [1] 3.14 2.81

x[[c(1,3)]]

#out 14

x[[1]][[3]]
 #out 14

x[[c(2,1)]]

#out 3.14

#Removing NA values
xna <- c(1,2,NA,4,NA,5)
xna  #1  2 NA  4 NA  5
bad <- is.na(xna)
xna[!bad] #output 1 2 4 5

na1 <- c(1,2,NA,4,NA,5)
na2 <- c("a","b",NA,"d",NA,"f")
good <- complete.cases(na1,na2)
good
#out TRUE  TRUE FALSE  TRUE FALSE  TRUE
na1[good]
#out 1 2 4 5
na2[good]
#out "a" "b" "d" "f"

airquality[1:6, ]
#outpt
#Ozone Solar.R Wind Temp Month Day
#1    41     190  7.4   67     5   1
#2    36     118  8.0   72     5   2
#3    12     149 12.6   74     5   3
#4    18     313 11.5   62     5   4
#5    NA      NA 14.3   56     5   5
#6    28      NA 14.9   66     5   6

good <- complete.cases(airquality)
airquality[good, ][1:6, ]
#output
#Ozone Solar.R Wind Temp Month Day
#1    41     190  7.4   67     5   1
#2    36     118  8.0   72     5   2
#3    12     149 12.6   74     5   3
#4    18     313 11.5   62     5   4
#7    23     299  8.6   65     5   7
#8    19      99 13.8   59     5   8

#Control Structures : if else
x <- 4
y <- 0
if(x > 3){
     y <- 10
} else{
     y <- 0
}

#so is this one
y <- if(x > 3){
     10
} else{
     0
}

# For loop
for(i in 1:10){
     print(i)
}
#out 1,2,3,4.....10
x <- c("a","b","c","d")
for(i in 1:4){
     print(x[i])
}
#out[1] "a"
#  [1] "b"
#  [1] "c"
#  [1] "d"
for(i in seq_along(x)){
     print(x[i])
}

for(latter in x){
     print(latter)
}
# For loop can be nested
x <- matrix(1:6,2,3)
for(i in seq_len(nrow(x))){
     for(j in seq_len(ncol(x))){
          print(x[i, j])
     }
}
#out
#[1] 1
#[1] 3
#[1] 5
#[1] 2
#[1] 4
#[1] 6

# While loop
count <- 0
while(count < 10){
     print(count)
     count <- count + 1
}

#Function 
#Argument Matching
mydata <- rnorm(100)
sd(mydata)
sd(x = mydata)
sd(x = mydata, na.rm = FALSE)
sd(na.rm = FALSE, x = mydata)
sd(na.rm = FALSE, mydata)


#the following two call are equivalent
mydata <- data.frame(x = rnorm(100),
                     y=rnorm(100))
lm(y ~ x, mydata, model = FALSE)

lm(data=mydata, y~x, model = FALSE, 1:100)
#sam output    Coefficients:
#   (Intercept)            x  
#       0.12770     -0.05288   

#Defining a function 
f <- function(a, b = 1, c = 2, d = NULL){
        
}
#output is NULL

#Lazy Evaluation
f <- function(a, b){
        a^2
}

f(2)
#output [1] 4

#Lazy Evaluation
f <- function(a,b){
        print(a)
        print(b)
}

f(45)

#out [1] 45
# Error in print(b) : argument "b" is missing, with no default

#Vectorized Operation
x <- 1:4; y <- 6:9
x + y
#out  7  9 11 13
x > 2
#out FALSE FALSE  TRUE  TRUE
x >= 2
#out FALSE  TRUE  TRUE  TRUE
y == 8
#out FALSE FALSE  TRUE FALSE
x * y
#out 6 14 24 36
x / y
#out  0.1666667 0.2857143 0.3750000 0.4444444


#Vectorized Matrix Operations
x <- matrix(1:4, 2, 2); y <- matrix(rep(10,4), 2,2)
x * y
#out      [,1] [,2]
#   [1,]   10   30
#  [2,]   20   40
x / y
#out      [,1] [,2]
#   [1,]  0.1  0.3
#  [2,]  0.2  0.4
x %*% y
#out      [,1] [,2]
#   [1,]   40   40
#   [2,]   60   60
