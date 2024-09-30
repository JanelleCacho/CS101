# 1.a
seq_vector <- -5:5
seq_vector

# 1.b
x <- 1:7
x

# 2.a
seq_vector <- seq(1, 3, by = 0.2)
seq_vector

# 3.
workers_ages <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24, 33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)

# 3.a
third_element <- workers_ages[3]
third_element

# 3.b
second_and_fourth <- workers_ages[c(2, 4)]
second_and_fourth

# 3.c
all_but_4th_12th <- workers_ages[-c(4, 12)]
all_but_4th_12th

# 4.
x <- c("first" = 3, "second" = 0, "third" = 9)
x
names(x)

# 4.a
selected_elements <- x[c("first", "third")]
selected_elements

# 5.a
x <- -3:2
x[2] <- 0
x

# 6.
month <- c("Jan", "Feb", "March", "Apr", "May", "June")
price_per_liter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchase_quantity <- c(25, 30, 40, 50, 10, 45)

# 6.a
diesel_data <- data.frame(Month = month, Price_Per_Liter_Php = price_per_liter, Purchase_Quantity_Liters = purchase_quantity)
diesel_data

# 6.b
average_expenditure <- weighted.mean(price_per_liter,purchase_quantity )
average_expenditure

# 7.a
rivers
data <- c(length(rivers),     
          sum(rivers),         
          mean(rivers),       
          median(rivers),     
          var(rivers),         
          sd(rivers),          
          min(rivers),       
          max(rivers))        
data

# 8.a
power_ranking <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)
celebrity_name <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", 
                    "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", 
                    "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen", 
                    "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", 
                    "Elton John", "David Letterman", "Phil Mickelson", "J.K. Rowling", 
                    "Brad Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Leno", 
                    "Celine Dion", "Kobe Bryant")
pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 17, 47, 75, 20, 39, 45, 32, 40, 31)
forbes_data <- data.frame(PowerRanking = power_ranking, 
                          CelebrityName = celebrity_name, 
                          Pay = pay)
forbes_data

# 8.b
forbes_data[forbes_data$CelebrityName == "J.K. Rowling", "PowerRanking"] <- 15
forbes_data[forbes_data$CelebrityName == "J.K. Rowling", "Pay"] <- 90
forbes_data

# 8.c
write.csv(forbes_data, file = "PowerRanking.csv", row.names = FALSE)
imported_data <- read.csv("PowerRanking.csv")
imported_data

# 8.d
subset_data <- forbes_data[10:20, ]
save(subset_data, file = "Ranks.RData")
subset_data

# 9.a
install.packages("readxl") 
library(readxl)

file_path <- "C:/Users/User/Desktop/hotels-vienna.xlsx" 

hotels_data <- read_excel(file_path)
hotels_data
# 9.b
dataset_dimensions <- dim(hotels_data)
dataset_dimensions

# 9.c
selected_data <- hotels_data[, c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
selected_data

# 9.d
save(selected_data, file = "new.RData")

# 9.e
load("new.RData")
head(selected_data)
tail(selected_data)

# 10.a
vegetables <- list(
  "Carrot",
  "Cabbage",
  "Pechay",
  "Okra",
  "Potato",
  "Daikon/Radish",
  "Bitter Gourd",
  "Cucumber",
  "Moringa/Malunggay",
  "Eggplant"
)
vegetables

# 10.b
vegetables <- append(vegetables, list("Squash", "Tomato"))
vegetables

# 10.c
new_vegetables <- list("Water spinach", "Green Bean", "Broccoli", "Sponge gourd")
vegetables <- append(vegetables, new_vegetables, after = 5)
vegetables

num_datapoints <- length(vegetables)
num_datapoints

# 10.d
vegetables <- vegetables[-c(5, 10, 15)]
vegetables
num_remaining_vegetables <- length(vegetables)
num_remaining_vegetables