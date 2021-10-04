install.packages("httr")
install.packages("purrr")

library(httr)
library(purrr)


r <- GET("https://api.github.com/users/brunj7/repos")
my_repos_list <- content(r)
my_repos <- map_chr(my_repos_list, "full_name")
my_repos[1:2]


my_r <- GET("https://api.github.com/users/ConnorFlynn/repos")
my_repos_list1 <- content(my_r)
my_repos1 <- map_chr(my_repos_list1, "full_name")
my_repos1
