#setting working directory
setwd("C:/Users/edeeg/Documents/practice/tutorial/Biocomp-Exercise07/")
#listing files
list.files()
#clearing environment
rm(list=ls())
#reading in iris data
iris <- read.csv("iris.csv")

####Question 1####
#x is variable representing number of lines to be returned 
  #the top of the indicated file
x <- 6
#y is the variable with the file to return lines from 
y <- read.csv("iris.csv")
#since we've already defined iris as the object for the data set
  #y could also just be y <- iris
#the square brackets index the rows 1:x from file y and assign
  #it to the object filehead
filehead <- y[1:x, ]
#filehead is printed and is the same as the output of head(iris)
filehead



####Question 2####
###1###

#viewing dimensions of iris dataset
dim(iris)
#printing last 2 rows in last 2 columns
iris[148:150,4:5]

###2###

#view unique species in iris
unique(iris[, 5])
#subset for only setosa observations
setosa= iris[iris[, 5]=="setosa",]
#view dimensions or count of only setosa observations
dim(setosa)
#subset for only versicolor observations
versicolor= iris[iris[, 5]=="versicolor",]
#view dimensions or count of only versicolor observations
dim(versicolor)
#subset for only virginica observations
virginica= iris[iris[, 5]=="virginica",]
#view dimensions or count of only virginica observations
dim(virginica)
#There is 50 observations for each flower

###3###
#subsetting iris for sepal widths > 3.5
bigsepals=iris[iris[,2]>3.5,]
#printing subsetted rows
bigsepals      

###4###
#writing out setosa file using object from part 2
write.csv(setosa, file="setosa.csv", row.names=FALSE)

###5###
#calculating mean, min, and max for petal length for species
  #virginica using object created in part 2
mean(virginica[, 3])
min(virginica[, 3])
max(virginica[, 3])
