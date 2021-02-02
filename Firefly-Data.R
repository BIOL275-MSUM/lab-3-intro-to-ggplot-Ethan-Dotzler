# load packages -----------------------------------------------------------

library(tidyverse)

# spermaphore data ------------------------------------------------------------

firefly_data <- read_csv("https://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q19FireflySpermatophoreMass.csv")

firefly_data                  # print the data in the console

distinct(firefly_data)

count(firefly_data)
 
ggplot(data = firefly_data)

ggplot(data = firefly_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass)) 

ggplot(data = firefly_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = 0.005) 

ggplot(data = firefly_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = 0.005,
                 boundary = 0, closed = "left") 

ggplot(data = firelfy_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = 0.005,
                 boundary = 0, closed = "left")

ggplot(data = firefly_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = 0.005,
                 fill = "#C5351B", color = "black") +
  labs(x = "Mass of Spermatophore (mg)", y = "Frequency (number of fireflies)") +
  theme_classic() +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1))
  )
