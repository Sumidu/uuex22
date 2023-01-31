# 
# This installs all required libraries using renv
renv::restore()

# Load mobi data ste
library(seminr)
mobi <- seminr::mobi
# help on the data set
?seminr::mobi

# Calculating Mean and standard deviation
m <- mean(mobi$CUEX1)
s <- sd(mobi$CUEX1)

# 66% of all Values are here
m-s
m+s


# one-Sample t-Test

t.test(mobi$CUEX1)
t.test(mobi$CUSA1)
t.test(mobi$CUSA2)
t.test(mobi$CUSCO)


# Another interesting data set
?seminr::influencer_data

ifdata <- seminr::influencer_data

# Means of categories are not always meaningful
mean(ifdata$influencer_group)
# use table instead
table(ifdata$influencer_group)

# Two sample t-test
# read ~ as "by"
t.test(ifdata$pic_1 ~ ifdata$influencer_group)

# within subject t-test (paired sample)
t.test(ifdata$pi_1 , ifdata$pi_2, paired = TRUE)

# Testing binomials (success rates)
# Confidence intervals from epitools
library(epitools)
epitools::binom.exact(7,10) # exact binomial test
epitools::binom.approx(7,10) # approximate test
epitools::binom.wilson(7,10) # wilson adjusted


### Übung 2


# Libraries for plotting
library(esquisse)
library(ggstatsplot)
library(likert)
library(tidyverse)


ux_study <- readRDS("ux_study.rds")




library(ggplot2)

ggplot(ux_study) +
 aes(x = Satisfaction, y = Exhaustion, colour = Prototype) +
 geom_jitter(size = 1.5) +
 scale_color_brewer(palette = "Dark2", direction = 1) +
 labs(title = "How does Satisfaction impact Exhaustion?", 
 subtitle = "Comparison by Prototype", color = "Prototype Version") +
 theme_minimal() +
 theme(legend.position = "top")


ggsave("diagram1.pdf")



ggstatsplot::ggbetweenstats(ux_study, Prototype, Satisfaction)



# Plotting the data
# Comparing prototypes
ggstatsplot::ggbetweenstats(ux_study, Prototype, Satisfaction)

ggstatsplot::ggpiestats(ux_study, Prototype)


ux_study %>% 
  filter(Prototype == "C") %>% 
  ggstatsplot::ggscatterstats(Satisfaction, Focus)
                        