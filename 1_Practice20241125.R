##Chapter1 Getting started#####
####Exercise of Chapter1####
#Gauss sum
#1.
lower <- 1:50
upper <- 100:51
pairwise_sums <- lower + upper
str(pairwise_sums)
total_sum <- sum(pairwise_sums);total_sum
#2.Try to use a loop in R
total_sum <- 0
for (i in 1:100){
  total_sum <- total_sum + i
}
total_sum
#There are other methods to take place the loop, like the function of apply and functions in package of purrr
#3. Try to use the apply function
#practice to use the apply function first
x <- cbind(x1 = 3, x2 = c(4:1, 2:5))
str(x)
dimnames(x)[[1]] <- letters[1:8]
x
apply(x, 2, mean, trim = .2)
x
col.sums <- apply(x, 2, sum)
col.sums
row.sums <- apply(x, 1, sum)
row.sums
rbind(cbind(x, Rtot = row.sums), Ctot = c(col.sums, sum(col.sums)))
ma <- matrix(c(1:4, 1, 6:8), nrow = 2)
ma
apply(ma, 1, table)


z <- array(1:24, dim = 2:4)
z
zseq <- apply(z, 1:2, function(x) seq_len(max(x)))
zseq 

#Gauss sum using apply function
x <- seq(1:100)
str(x)
x <- as.numeric(x)
str(x)
total_sum_apply <- apply(x, 1 , mean)
#The apply() function is designed for matrices or data frames, where you specify the margin (1 for rows, 2 for columns) to apply a function. Since x is a vector, there’s no matrix-like structure to operate on
x <- data.frame(x=seq(1:100))
x
total_sum_apply <- apply(x, 2 , sum)
total_sum_apply

#4. Try to use the functions in the Purrr package
library(purrr)
total_sum_map <- sum(map_dbl(1:100,~.x))
total_sum_map

##Chapter 2 Programming primers####





