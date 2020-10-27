library(tidyverse)
load("rdas/murders.rda")
murders %>% mutate(abb = reorder(abb, rate)) %>%
  ggplot(aes(abb, rate)) +
  geom_bar(width = 0.5, stat = "identity", color = "black") +
  xlab("State abbreviation") +
  ylab("Murders per million population") +
  ggtitle("US Gun Murders by State in 2010")
  coord_flip() +
  ggsave("figs/barplot.png")
