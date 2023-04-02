#setup our environment
mypath = "https://raw.githubusercontent.com/sivabalanb/Data-Analysis-with-Pandas-and-Python/master/nba.csv"
setwd(mypath)
#2015-2016 nba season

#library 
library(tidyverse)
library(ggplot2)
library(readr)
library(neuralnet)
library(heuristica)
library(caret)

#load data
nba <- read.csv(mypath)
head(nba)

#statistical description
summary(nba)

#quartile plot
ggplot(nba) + geom_point(aes(x=Age, y=Salary, color=Team)) + geom_smooth(aes(x=Age, y=Salary, color=Team))

#scatterplot quartile
ggplot(nba, aes(x=Age, y=Salary, color=Team)) + geom_point()

#Linear Model
Nbamodel <- lm(Salary ~ Team + Position + Number, data = nba)
summary(Nbamodel)

#confusion matrix
