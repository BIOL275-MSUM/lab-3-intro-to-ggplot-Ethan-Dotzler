library(auk)                          # load the auk package
birds <- ebird_taxonomy %>%           # start with the ebird_taxonomy data
  as_tibble() %>%                     # tibbles print better in the console
  filter(category == "species")       # remove non-species taxa
ebird_taxonomy                  # print the data in the console

distinct(ebird_taxonomy) 

count(ebird_taxonomy)

ggplot(data = ebird_taxonomy) 

ggplot(data = ebird_taxonomy) +
  geom_bar(mapping = aes(x = family))

ggplot(data = ebird_taxonomy) +
  geom_bar(mapping = aes(x = fct_infreq(family)))

ggplot(data = ebird_taxonomy) +
  geom_bar(mapping = aes(x = fct_infreq(family)), fill = "#C5351B")

ggplot(data = ebird_taxonomy) +
  geom_bar(mapping = aes(x = fct_infreq(family)), fill = "#C5351B") +
  labs(x = "Family", y = "Frequency (number of birds)")

ggplot(data = birds) +
  geom_bar(mapping = aes(x = fct_infreq(order)), fill = "#C5351B", 
           width = .8) + 
  scale_y_log10()+
  labs(x = "Order", y = "Frequency (number of birds)", 
       title = "Number of bird species in each order", 
       subtitle = "*Note that numbers are in log scale to better show all data.") +
  theme_classic(base_size = 12) +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(0.65)),
    axis.text.x = element_text(angle = 45, hjust = 1),
    axis.ticks.x = element_blank()
  )
