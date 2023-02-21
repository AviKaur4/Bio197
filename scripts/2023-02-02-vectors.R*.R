#Basics of vectors
# Code from class 6 

# A single or a sequence of multiple values of the same type
# numeric vectors
single_number <- c(1)
multiple_numbers <- c(1,2,3,4,5,6,7,8,9,10)


# create a sequence of numbers with :

1:10
1:100
1:1000
-10:100
0.5:8

# To create a sequence with a step other than 1

seq()
?seq
seq(-23,100,5)
seq(100,-100, -2)

# I want to create a random number sequence
count <- c(9,16,3,10)

mean(count)
max(count)
min(count)
median(count)
sum(count)
summary(count)

# character vectors
c("luna", "damian", "charles", "james", "anita", "austin")
luna <- "instructor"
damian <- "student"
c(luna, damian)

states <- c("FL", "FL", "GA", "SC")
states1 <- c("FL", "FL", "GA", "SC")

str(states1)
mode(states)
mode(count)

class(states)
class(count)

length(states1)
length(count)

head(count)
head(1:100)
tail(1:100)
View(count)

# subset vectors: accessing elements within a vector
#I want the first and third element of the states vector
?subset
str(count)
count
# square brackets mean position in R
states[3]
# If I want more elements, I need a numeric vector with all 
states1[c(1,2)]
states1[1,3]
states1[1:3]
states1[c(4,2,1,3)]

#logical vectors:
# creating logical vectors with "is" functions
is.factor(count)
is.function(states)
is.vector(states)

my_logical <- c(FALSE, TRUE, TRUE, FALSE)

# relational statements: equal to, larger than, smaller than. 
# equal to with doubke ==
1 == 1
1 == 2
1 == 1
my_number = "luna"

1 > 1
1 >=1 # larger or equal to 1
1 < 1
1 <= 1 #smaller or equal to 
# ! mean not
1 !=1
1!= 2
!TRUE
!FALSE

"a" == "a"
#property of coercion
"a" > "a"
"a" > "b"
"A" == "a"
"A" > "a"


#relational operations can be run on larger vectors

1:10 > 7

#########################################################
#Basic vectors exercise
#######################################################
subset(states, states =="GA")
numbers <- c(5, 2, 26, 8, 16)
length(numbers)
numbers[c(3)]
min(numbers)
max(numbers)
mean(numbers)
numbers[c(1,2,3)]
sum(numbers)

# null values in R are represented by the symbol NA
# other type of null values are represented with NULL
NA
mode(NA)
?NULL
count_na <- c(9,16,NA,10)
mean(count_na, na.rm = TRUE)
min(count_na)

NA > NA
NA > 3
NA == NA 

#########################################################
#Nulls in Vectors Exercise
#######################################################
numbers <- c(7, 6, 22, 5, NA, 42)
min(numbers)
max(numbers)
mean(numbers)
sum(numbers)

# simple math with vectors
1 + 2
2 * 3
5 /7
5 ^ 3 

states # different states
count # population number
area <- c(3,5, 1.9, 2.7)

#obtain the population density per state (number divided by area):
count > 3
count / area # element-wise operation
count /c(1,2) # the goal of R to do element wise operation, so in this case it recycles the smaller vector to match the number of elements in the larger vector.
density <- count / area
1:10 > 7
states1 == "FL"

#filter vectors based on something
# filtering uses the same syntax as subsetting: []
#subsetting based on a condition 
count[c(TRUE, TRUE, FALSE, FALSE)]
count[states1 == "FL"]

# get the density values that are not from the state of FL
density[states1!="FL"]
#get all states that have a density larger than 3
states1[density > "3"]

#filter densities that are larger than 3
density[density >3]
density_3 <- density > 3
density[density_3]
density

#########################
#Summary of class 6, Intro to vectors
#Give me your top 5 commands or concepts you learned today
seq() function it does blah blah
relational operators
filtering

seq() - It creates a sequence of elements within a vector.
subset - With this function, it acquires the rows and columns the data frame. 
Length - It sets the length of a vector or any other objects.
Summary() - With this function, it summarizes the data frame just through one vector or value. 
my_logical - It is a vector that only holds TRUE or FALSE values. 

#Homework exercise
#https://lunasare.github.io/spring2023-data-science/exercises/Vectors-shrub-volume-vectors-R/

length <- c(2.2, 2.1, 2.7, 3.0, 3.1, 2.5, 1.9, 1.1, 3.5, 2.9)
width <- c(1.3, 2.2, 1.5, 4.5, 3.1, NA, 1.8, 0.5, 2.0, 2.7)
height <- c(9.6, 7.6, 2.2, 1.5, 4.0, 3.0, 4.5, 2.3, 7.5, 3.2)
Vol_shrub <- length * width * height
sum(Vol_shrub)
sum(Vol_shrub, na.rm = TRUE)
height[length > 2.5]
numberheight <- height[length > 2.5]
height[length > 5]
numberheight2 <- height[length > 5]
height[c(1,2,3,4,5)]
Vol_shrub[c(1,2,3)]
Vol_shrub[c(6,7,8,9,10)]
