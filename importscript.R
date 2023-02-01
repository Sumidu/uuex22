# Basic library for manipulating data in R 
library(tidyverse)

# import all data using the APIs
# scripts are in the data directory
script_names <- dir(path = "data", pattern = ".r")

# SoSci Survey scripts create a "ds" dataframe that we store in a list
imported_data <- list()
idx <- 1
message("Running scripts:")
for (i in script_names){
  message(paste("Running", i))
  source(paste0("data/",i))
  imported_data[[idx]] <- ds
  idx <- idx + 1
}


# Since everyone named their block differently, we must merge data manually.
# We select the variables that are most likely the SUS.
reduced_data <- list()
reduced_data[[1]]  <- imported_data[[1]] %>% select(starts_with("UX01")) %>% mutate(id = script_names[[1]])
reduced_data[[2]]  <- imported_data[[2]] %>% select(starts_with("SU")) %>% mutate(id = script_names[[2]]) 
reduced_data[[3]]  <- imported_data[[3]] %>% select(starts_with("UX01")) %>% mutate(id = script_names[[3]]) 
reduced_data[[4]]  <- imported_data[[4]] %>% select(starts_with("B101")) %>% mutate(id = script_names[[4]]) 
reduced_data[[5]]  <- imported_data[[5]] %>% select(starts_with("A003")) %>% mutate(id = script_names[[5]]) 
reduced_data[[6]]  <- imported_data[[6]] %>% select(starts_with("SU01")) %>% mutate(id = script_names[[6]]) 
reduced_data[[7]]  <- imported_data[[7]] %>% select(starts_with("UX01")) %>% mutate(id = script_names[[7]]) 
reduced_data[[8]]  <- imported_data[[8]] %>% select(starts_with("UX01")) %>% mutate(id = script_names[[8]]) 
reduced_data[[9]]  <- imported_data[[9]] %>% select(starts_with("SC07")) %>% mutate(id = script_names[[9]]) 
reduced_data[[10]] <- imported_data[[10]] %>% select(starts_with("A301")) %>% mutate(id = script_names[[10]])
reduced_data[[11]] <- imported_data[[11]] %>% select(starts_with("UX01")) %>% mutate(id = script_names[[11]])
reduced_data[[12]] <- imported_data[[12]] %>% select(starts_with("UX01")) %>% mutate(id = script_names[[12]])
reduced_data[[13]] <- imported_data[[13]] %>% select(starts_with("GG01")) %>% mutate(id = script_names[[13]])
reduced_data[[14]] <- imported_data[[14]] %>% select(starts_with("S001")) %>% mutate(id = script_names[[14]])
reduced_data[[15]] <- imported_data[[15]] %>% select(starts_with("UX01")) %>% mutate(id = script_names[[15]])

# apply same naming scheme
naming_scheme <- c(paste0("sus_", 1:10), "group") # names(reduced_data[[1]])
for(i in 1:15){
  names(reduced_data[[i]]) <- naming_scheme
  # also convert variables to numeric
  reduced_data[[i]] <- reduced_data[[i]] %>% mutate(across(sus_1:sus_10, as.numeric))
}

# merge data into one dataset
merged_data <- reduced_data[[1]]
for(i in 1:15){
  merged_data <- merged_data %>% bind_rows(reduced_data[[i]])
}

# remove weird rownames
rownames(merged_data) <- NULL

# Filter out negative responses
final_data <- merged_data %>% 
  mutate(across(sus_1:sus_10,  ~replace(., . < 0 , NA_integer_))) %>% 
  drop_na() %>% 
  mutate(group = str_replace(group, "import_", "")) %>% # remove import string
  mutate(group = str_extract(group, "(.)*?_")) %>% # remove date-suffix
  mutate(group = str_sub(group, 1, -2)) %>%  # remove trailing underscore
  mutate(across(sus_1:sus_10, ~ (. - 1) * 2.5  )) %>%  # prepare SUS calculation
  mutate(SUS = rowSums(select(., contains("su"))))
  
# Examples start here
# example to filter out data of one group
survey_list <- final_data$group %>% unique()

survey_name <- survey_list[4]
print(survey_name)
our_data <- final_data %>% filter(group == survey_name)

library(gghighlight)

# plot of the data
final_data %>% ggplot() +
  aes(x = SUS) +
  geom_histogram(bins = 20) +
  scale_x_continuous(limits = c(-10,110)) +
  gghighlight::gghighlight(group == survey_name) +
  ggtitle("Histogram of SUS-Scale") +
  labs(caption = paste("Highlighted", survey_name)) +
  theme_bw()

# plot of the data
final_data %>% ggplot() +
  aes(x = SUS) +
  aes(fill = group) +
  geom_histogram(bins = 20, alpha=0.3, position = 'identity') +
  scale_x_continuous(limits = c(-10,110)) +
  gghighlight::gghighlight(group == survey_name) +
  ggtitle("Histogram of SUS-Scale") +
  labs(caption = paste("Highlighted", survey_name)) +
  theme_bw()

# plot of the selected data
our_data %>% ggplot() +
  aes(x = SUS) +
  aes(fill = group) +
  geom_histogram(bins = 20) +
  scale_x_continuous(limits = c(-10,110)) +
  ggtitle("Histogram of SUS-Scale") +
  labs(caption = paste("Highlighted", survey_name)) +
  theme_bw()
