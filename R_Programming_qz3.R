#### R Programming Quiz Week 3  ####S

#### Question 1 #####
library(datasets)
data(iris)
write.csv(iris, "~/data_toolbox/RPrg_iris.csv")

head(iris,20)
?iris
names(iris)

irs_mean <- mean(iris$Sepal.Length)
ean(IMS$std.y[IMS$pi==1])
tapply(iris$Sepal.Length , iris$Species == "virginica", mean) 


a <- mean(iris$Sepal.Length[iris$Species=="virginica"])
round(a,0)

#### Question 2 ####
apply(iris[, 1:4], 2, mean)


#### Question 3 ####
library(datasets)
data(mtcars)
 #calculate average by number of cylinders in car
#split(mtcars, mtcars$cyl)

with(mtcars, tapply(mpg, cyl, mean))
sapply(split(mtcars$mpg, mtcars$cyl), mean)
tapply(mtcars$mpg, mtcars$cyl, mean)



#### Question 4 ####
tapply(mtcars$mpg, mtcars$cyl, mean)
round(26.66364-15.10000,0)

#### Question 5 ####


debug(ls)



