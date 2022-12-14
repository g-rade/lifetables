library(janitor)
library(dplyr)
library(purrr)
library(tibble)

mortality <- read.delim("data-raw/mortality2016.txt") %>%
  select(Age.Group, Deaths, Population) %>%
  clean_names() %>%
  filter(!is.na(deaths)) %>%
  mutate(age_group = ifelse(age_group == "", "Not Stated", age_group)) %>%
  filter(age_group != "Not Stated",  deaths != "Not Applicable", population != "Not Applicable") %>%
  mutate(deaths = as.numeric(deaths), population = as.numeric(population)) %>%
  as_tibble()


usethis::use_data(mortality, overwrite = TRUE)



mortality2 <- read.delim("data-raw/mortality2016_2.txt") %>%
  clean_names() %>%
  rename(age_group = single_year_ages) %>%
  select(age_group, deaths, population) %>%
  filter(!is.na(deaths)) %>%
  mutate(age_group = ifelse(age_group == "", "Not Stated", age_group)) %>%
  filter(age_group != "Not Stated", deaths != "Not Applicable", population != "Not Applicable") %>%
  filter(is.na(population) == FALSE) %>%
  as_tibble()


mortality2$deaths <- as.numeric(mortality2$deaths)
mortality2$population <- as.numeric(mortality2$population)

#mortality2 <- as_tibble(mortality2)

usethis::use_data(mortality2, overwrite = TRUE)

mortality3 <- read.delim("data-raw/gender_mortality2016.txt") %>%
  clean_names() %>%
  rename(age_group = single_year_ages) %>%
  select(age_group, gender, deaths, population) %>%
  filter(!is.na(deaths)) %>%
  mutate(age_group = ifelse(age_group == "", "Not Stated", age_group)) %>%
  filter(age_group != "Not Stated", deaths != "Not Applicable", population != "Not Applicable") %>%
  filter(is.na(population) == FALSE) %>%
  as_tibble()

mortality3$deaths <- as.numeric(mortality3$deaths)
mortality3$population <- as.numeric(mortality3$population)

usethis::use_data(mortality3, overwrite = TRUE)

