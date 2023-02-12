# Vectors
# Create a sequence from 1-15
seq1 <- 1:15

# Create a sequence from 1-15 with an increment of .1
seq_increment <- seq(1, 15, .1)
# We can also do this 
(another_seq_increment <- seq(1, 15, by = .1))

# Demonstrate how missing data is represented
vec1 <- c(0, NA, 1, 2)
is.na(vec1) # TRUE tells us that index in NA, FALSE tells us it isn't
anyNA(vec1)  # TRUE tells us that a value is NA within the vector

# Coercion - implicit - will always be character class if character is involved.
imp_coer_vec_a <- c("xx", "beta", c(2.5, "g"))
typeof(imp_coer_vec_a)


imp_coer_vec_b <- c("xx", "beta", c(TRUE, 4))
typeof(imp_coer_vec_b)

imp_coer_vec_c <- c("xx", "beta", c("g", TRUE))
typeof(imp_coer_vec_c)

# Coercion - explicit
exp_coer <- c("77", "88","99")
class(exp_coer)
new_exp_coer <- as.integer(exp_coer)
class(new_exp_coer) # This now shows the characters as integers

log_coer <- c("TRUE", "FALSE")
new_log_coer <- as.logical(log_coer)
class(new_log_coer) # Starts as character but we make it logical. 

num_coer <- c(T, F, F)
(new_num_coer <- as.numeric(num_coer)) # T becomes 1 F becomes False. 


# Matrices
# Construct a 5 x 8 column-wise matrix
(mat <- matrix(1:40, nrow = 5, ncol = 8))
# Check they are vectors
class(mat) 
typeof(mat)
is.vector(mat[1,])
is.vector(mat[,1])

# create a matrix from vector
vec_to_mat <- c(1:40)
new_mat <- matrix(vec_to_mat, nrow = 5, ncol= 8)


# Arrays
 top_ten <- c("Trial of the Chicago 7",
              "Promising Young Woman",
              "Tenet",
              "Nomadland",
              "The Invisible Man",
              "The King of Staten Island",
              "One Night in Miami",
              "Ma Rainey's Black Bottom",
              "Mank",
              "Birds of Prey")
# This is IMDb rank
rank1 <- c(7.7, 7.5, 7.3, 7.3, 7.1, 7.1, 7.1, 6.9, 6.8, 6)

# This info will go in both dimensions
type_of_movie <- c("Drama", "Crime", "Action", "Drama", "Drama", "Comedy", "Drama", 
                   "Drama", "Biogrophy", "Action")

# Now we create a matrix for IMDb rank and the genre
(mat <- cbind(rank1, type_of_movie))
# We can set row names to the movies
rownames(mat) <- top_ten
colnames(mat) <- c("Rank", "Genre")
# This is the metascore rankings and genre
rank2 <- c(76, 73, 69, 91, 72, 67, 83, 87, 79, 60)
# This second matrix will be the second dimension
(mat2 <- cbind(rank2, type_of_movie))

# Creating the array
# Now we can see the different ratings that were given 
# Make sure to cite IMDb in final presentation...
# https://www.imdb.com/list/ls096118787/?sort=user_rating,desc&st_dt=&mode=detail&page=1
my_array <- array(NA, dim = c(10, 2, 2))
dimnames(my_array)[[1]] <- top_ten
dimnames(my_array)[[2]] <- c("Rank", "Genre")
dimnames(my_array)[[3]] <- c("IMDb", "Metascore")
my_array[,,1] <- mat
my_array[,,2] <- mat2
my_array
is.array(my_array)





# List of ten cars
# Make, Model, Year, MPG
# make sure to cite fueleconomy.gov in final presentation
make <- c("Ford", "Lincoln", "Chevrolet", "Dodge",
          "Nissan", "Hyundai", "Honda", 
          "Mazda", "Subaru", "Audi")
model <- c("Escape", "MKZ", "Corvette", "Viper", "Altima", "Tucson",
           "Civic", "Mazda3", "Legacy", "A5")
year <- c(2022, 2020, 2020, 2017, 1999, 2018, 2015, 2009, 2022, 2022)
mpg <- c(30, 24, 19, 14, 23, 27, 33, 25, 30, 29)

car_list <- list(make, model, year, mpg)
car_list
# Create names for the list
names(car_list) <- c("Make", "Model", "Year", "MPG")
car_list
car_list[1]
car_list[[1]]
car_list$Model


# DATA FRAME
id <- letters[1:26]
x <- 1:26
y <- 27:52
df <- data.frame(letters, x,y)
is.data.frame(df)
