
# 1. the printVecInfo() function take a vector as input
# 2. the printVecInfo() fucntion print out the the mean, median, min & max 
# standard deviation, quantiles, and skewness
printVecInfo <- function(inputVector){
  mean_string <- paste("mean:", mean(inputVector), sep = " ")
  print(mean_string)
  median_string <- paste("median:", median(inputVector), sep = " ")
  print(median_string)
  min_string <- paste("min:", min(inputVector), sep = " ")
  print(min_string)
  max_string <- paste("max:", max(inputVector), sep = " ")
  print(max_string)
  sd_string <- paste("sd:", sd(inputVector), sep = " ")
  print(sd_string)
  quantile_string <- paste("quantile [0.05 - 0.95]:", quantile(inputVector, probs = .05,.95), sep = " ")
  print(quantile_string)
  skewness_string <- paste("skewness:", skewness(inputVector), sep = " ")
  print(skewness_string)
}

# 3. test the printVecInfo() function
v <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 50)
printVecInfo(v)

#Step 2 Creating Samples in a Jar

red_marbles <- c(rep(1,50))
blue_marbles <- c(rep(0,50))
jar <- c(red_marbles,blue_marbles)
jar

#confirm that the jar has 50 red_marbles
length(red_marbles)

#sample 10 marbles from the jar. how many are red? what was the percentage?
sample10 <- sample(jar, 10, replace = TRUE)
sample10
sum(sample10)
#sum tells you the number of red marbles in the sample
mean(sample10)
#equation above gives you %
#Sample 20 times
sample10_20 <- replicate(20, mean(sample(jar,10,replace=TRUE)), simplify=TRUE)
sample10_20
printVecInfo(sample10_20)
hist(sample10_20)
#Sample 20 100 times
sample20_100<-replicate(100, mean(sample(jar,20,replace=TRUE)), simplify=TRUE)
sample20_100
printVecInfo(sample20_100)
hist(sample20_100)
#Sample 100 100 times
sample100_100<-replicate(100, mean(sample(jar,100,replace=TRUE)), simplify=TRUE)
sample100_100
printVecInfo(sample100_100)
hist(sample100_100)

#Explore the airquality dataset
my_airquality<-airquality
my_airquality
my_airquality<-na.omit(my_airquality)
my_airquality
printVecInfo(my_airquality$Ozone)
hist(my_airquality$Ozone)
printVecInfo(my_airquality$Wind)
hist(my_airquality$Wind)
printVecInfo(my_airquality$Temp)
hist(my_airquality$Temp)