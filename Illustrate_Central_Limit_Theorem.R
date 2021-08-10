# generate data for the 2 cities, with a specific mean and standard deviation

set.seed(10) # for reproducibility

###### Tom City #######
Tom.N <- 1000000 # total population
Tom.Mean <- 1.5
Tom.StandardDeviation <- 0.3
Tom.X <- rnorm(Tom.N,Tom.Mean,Tom.StandardDeviation) # generate data 

#plot distribution for Tom
hist(Tom.X, main = "Distribution for Tom", xlab = 'Weekly number of visits')

###### Jerry City #######
Jerry.N <- 1000000 # total population
Jerry.Mean <- 3.5
Jerry.StandardDeviation <- 0.3
Jerry.X <- rnorm(Jerry.N,Jerry.Mean,Jerry.StandardDeviation) # generate data 

#plot distribution for Jerry
hist(Jerry.X, main = "Distribution for Jerry", xlab = 'Weekly number of visits')

###### plot for the whole country ######
TomAndJerry = c(Tom.X,Jerry.X)
hist(TomAndJerry, main = "Distribution for Tom & Jerry", xlab = 'Weekly number of visits')

## let's sample randomly from each regin and repeat 

n <- 100 # n, the number of points in each experiment
E <- 10000 # the number of experiments

# Tom Region
sample_means <- vector()
for (k in c(1:E)){
  selected_households <- sample(Tom.X,n)
  sample_means <- c(sample_means,mean(selected_households))
}

# plot the result
hist(sample_means , main = "Sampling Distribution for Tom", xlab = 'Sample Mean')

# Jerry Region
sample_means <- vector()
for (k in c(1:E)){
  selected_households <- sample(Jerry.X,n)
  sample_means <- c(sample_means,mean(selected_households))
}

# plot the result
hist(sample_means , main = "Sampling Distribution for Jerry", xlab = 'Sample Mean')

# Country (Tom and Jerry)


sample_means <- vector()
for (k in c(1:E)){
  selected_households <- sample(TomAndJerry,n)
  sample_means <- c(sample_means,mean(selected_households))
}

# plot the result
hist(sample_means , main = "Sampling Distribution for Tom and Jerry", xlab = 'Sample Mean')



