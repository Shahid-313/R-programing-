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


# Dates in R
#Dates are represented by the Date class and can be coerced from a character string using the 
#as.Date() function
as.Date("1970-01-01")
#out  "1970-01-01"
as.POSIXct("1970-01-01")
#out  "1970-01-01 PST"
as.POSIXlt("1970-01-01")
#out "1970-01-01 EET"

#There are a few generic function that work on dates and time
#weekdays: give the day of the week
#months : give the month name
#quarters : give the quarter namber("Q1","Q2","Q3",or"Q4")
x <- Sys.time()
x
#out  "2021-04-08 20:35:40 PDT"
p <- as.POSIXlt(x)
x
#out "2021-04-08 20:35:40 PDT"
names(unclass(p))
#out  [1] "sec"    "min"    "hour"   "mday"   "mon"    "year"   "wday"   "yday"   "isdst" 
#    [10] "zone"   "gmtoff"
p$sec
#out 40.11223
p$mon
#out 3
p$wday
#out 4
#You can also use the POSIXct format
x <- Sys.time()
x
#out "2021-04-08 20:42:26 PDT"
x$sec
#Error in x$sec : $ operator is invalid for atomic vectors
p <- as.POSIXlt(x)
p$sec
#out 26.44235
#There are the strptime function in case your dates are written in a different format
datestring <- c("January 10, 2021 10:40", "December 9, 2020 9:10")
x <- strptime(datestring, "%B %d, %Y %H:%M")
x
#out  "2021-01-10 10:40:00 PST" "2020-12-09 09:10:00 PST"
class(x)
#out "POSIXlt" "POSIXt" 
#Operations on Dates and Time 
x <- as.Date("2021-01-01")
y <- strptime("9 jan 2020 11:34:21", "%d %b %Y %H:%M:%S")
x - y
#output Error in x - y : non-numeric argument to binary operator
#In addition: Warning message:
#        Incompatible methods ("-.Date", "-.POSIXt") for "-" 
class(x)
#out "Date"
class(y)
#out "POSIXlt" "POSIXt"
x <- as.POSIXlt(x)
x - y
#out Time difference of 357.1845 days


#Looping on the command line 
#Writing for, while koop is useful when programming but not particularly easy 
#when working interactively on the command line for data set there are  some function
#which implement looping to make life easier.

#lapply 
#lapply always returns a list
x <- list(a = 1:5, b = rnorm(10))
x
#out $a
#[1] 1 2 3 4 5

#$b
#[1]  0.64924784  0.05297643 -1.26104253 -0.37969272  2.87958803  0.01171871  0.03036212
#[8] -0.92942536  0.07667166 -1.93271151
x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
x
lapply(x, mean)
#out $a
#  [1] 2.5

#$b
#  [1] 0.02127327

#$c
#  [1] 0.7161575

#$d
#  [1] 5.057068

x <- 1:4
lapply(x, runif) 
#out [[1]]
#[1] 0.8761544

#[[2]]
#[1] 0.4065435 0.4881316

#[[3]]
#[1] 0.1466252 0.1473455 0.4613611

#[[4]]
#[1] 0.5892430 0.9592512 0.3886967 0.8378174#

x <- 1:4
lapply(x, runif, min = 0, max = 10)
#out [[1]]
#[1] 8.525972

#[[2]]
#[1] 3.752197 1.979665

#[[3]]
#[1] 3.740776 8.274941 6.688818

#[[4]]
#[1] 5.328182 7.624775 2.324800 3.335000

#Sapply
#Sapply will try to simplify the result of lapply if possible.
x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
x
lapply(x, mean)
sapply(x, mean)
#out         a         b         c         d 
#           2.5000000 0.3481401 1.0689808 5.0751410 

#apply
#apply function it is most often used to apply a function to the rows or columns of a matrix
x <- matrix(rnorm(200), 20, 10)
x
apply(x, 2, mean)
#out  [1]  0.140390105 -0.090808423 -0.201143648  0.138035414  0.007506306  0.497892767
#    [7]  0.106923365  0.278331439 -0.041130898  0.127573879
apply(x, 1, sum)
#out  [1]  3.15209320 -0.02946779 -1.18681250 -1.49457067  0.03722277 -1.37212422  4.92833496
#    [8]  0.28585292  5.07855187 -1.01685988 -0.88610174 -4.65227551 10.54725277  1.40601423
#   [15]  4.21911002  0.97962025 -4.83733911  3.87152460  3.41745139 -3.17607141

#col/row sum and mean
#rowSums = apply(x, 1, sum)
#rowMeans = apply(x, 1, mean)
#colSums = apply(x, 1, sum)
#colMeans = apply(x, 1, mean)

#quantiles of the rows a matrix
x <- matrix(rnorm(200), 20, 10)
x
apply(x, 1, quantile, probs = c(0.25, 0.75))
#out
# [,1]       [,2]       [,3]       [,4]       [,5]        [,6]       [,7]
# 25% -0.2162524 -0.3574047 0.06673605 -0.3548040 -0.4116491 -0.06097348 -0.6030282
# 75%  0.5516262  0.6942538 0.81116157  0.4978761  0.4047348  0.92722828  0.3503355
# [,8]       [,9]      [,10]      [,11]      [,12]      [,13]      [,14]
# 25% -0.9615653 -1.1059002 -0.9717300 -0.6167640 -0.9984053 -0.6863518 -0.3293723
# 75%  0.1551460  0.6457009  0.3470148  0.4440976  0.7861758  0.8935586  0.5514993
# [,15]       [,16]      [,17]      [,18]     [,19]      [,20]
# 25% -2.1867141 -1.05276240 -1.0068494 -0.7563765 -0.764698 -0.6422177
# 75%  0.5147983  0.08843963  0.3191521  0.3738494  1.082940  0.6455532

#tapply
#tapply is used to apply a function over subset of a vector 
x <- c(rnorm(10), runif(10), rnorm(10, 1))
x
f <- gl(3, 10)
f
#out  [1] 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2 3 3 3 3 3 3 3 3 3 3
#   Levels: 1 2 3
tapply(x, f, mean)
#out          1          2          3 
#           0.09261588 0.64210866 1.03361115 
tapply(x, f, mean, simplify = FALSE)
#out 
#[1] 0.09261588

#$`2`
#[1] 0.6421087

#$`3`
#[1] 1.033611

tapply(x, f, range)
#out
#$`1`
#[1] -1.3535417  0.8446613

#$`2`
#[1] 0.03505913 0.96222289

#$`3`
#[1] -0.401746  2.489230

#Split
#split takes a vector or other objects and split it into groups determined by a factor or list of factor
x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10)
f
split(x, f)
#out
#$`1`
# [1]  0.2651576 -0.9919134  0.8349403 -0.7873522 -1.5320703  0.5215005  0.1171860
# [8] -0.3544857 -1.5705989 -0.8300652

#$`2`
# [1] 0.70653444 0.86344461 0.80314719 0.08028235 0.18668606 0.69862782 0.20756456
# [8] 0.48576201 0.72592162 0.32166627

#$`3`
# [1]  0.5647165  1.2539255  1.7348524  2.1021990 -0.2901003  0.2239229  1.6669612
# [8]  1.0975945  0.7331247  1.8988613

# a common idiom is split followed by an lapply
lapply(split(x, f), mean)
#out 
#$`1`
#[1] -0.4327701

#$`2`
#[1] 0.5079637

#$`3`
#[1] 1.098606

library(datasets)
head(airquality)
#out
#Ozone Solar.R Wind Temp Month Day
#1    41     190  7.4   67     5   1
#2    36     118  8.0   72     5   2
#3    12     149 12.6   74     5   3
#4    18     313 11.5   62     5   4
#5    NA      NA 14.3   56     5   5
#6    28      NA 14.9   66     5   6

s <- split(airquality, airquality$Month)
lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R","Wind")]))
#out
#$`5`
#Ozone  Solar.R     Wind 
#NA       NA 11.62258 

#$`6`
#Ozone   Solar.R      Wind 
#NA 190.16667  10.26667 

#$`7`
#Ozone    Solar.R       Wind 
#NA 216.483871   8.941935 

#$`8`
#Ozone  Solar.R     Wind 
#NA       NA 8.793548 

#$`9`
#Ozone  Solar.R     Wind 
#NA 167.4333  10.1800 

sapply(s, function(x) colMeans(x[, c("Ozone","Solar.R","Wind")]))
#out
# 5         6          7        8        9
# Ozone         NA        NA         NA       NA       NA
# Solar.R       NA 190.16667 216.483871       NA 167.4333
# Wind    11.62258  10.26667   8.941935 8.793548  10.1800

sapply(s, function(x) colMeans(x[, c("Ozone","Solar.R","Wind")],
                               na.rm = TRUE))
#out
#5         6          7          8         9
#Ozone    23.61538  29.44444  59.115385  59.961538  31.44828
#Solar.R 181.29630 190.16667 216.483871 171.857143 167.43333
#Wind     11.62258  10.26667   8.941935   8.793548  10.18000

#Recap