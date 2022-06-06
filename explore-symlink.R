library(tidyverse)

data_secure <- fs::path(fs::path_home_r(), "data_secure")

fs::link_create(path = data_secure, new_path = here::here("data_secure"))

test <- readr::read_csv(here::here("data_secure", "test.csv"))


test_out <- test %>%
  mutate(c = runif(1))

write.csv(test_out, here::here("data_secure", "test_out.csv"))
