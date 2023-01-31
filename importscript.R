library(tidyverse)

# import

scripts <- dir(path = "data", pattern = ".r")

ourdata <- list()
idx <- 1
for (i in scripts){
  print(i)
  source(paste0("data/",i))
  ourdata[[idx]] <- ds
  idx <- idx + 1
}

ourdata[[1]] %>% select(starts_with("UX01")) %>% mutate(id = scripts[[1]]) 
ourdata[[2]] %>% select(starts_with("SU")) %>% mutate(id = scripts[[2]])
ourdata[[3]] %>% select(starts_with("UX01")) %>% mutate(id = scripts[[3]])
ourdata[[4]] %>% select(starts_with("B101")) %>% mutate(id = scripts[[4]])