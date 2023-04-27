medea_percentages <- c(54.5, 71.7, 43.3, 100, 48.8, 100, 96.8, 93.8)
generations <- c("G1", "G2", "G2", "G3", "G3", "G4", "G5", "G6")
sex <- c("Male", "Female", "Male", "Female",  "Male", "Female", "Female", "Female" )


medea_df <- data.frame(generations, medea_percentages, sex)


# create a bar plot
barplot(medea_df$medea_percentages, names.arg = medea_df$generations, 
        xlab = "Generations", ylab = "Percentage of Progeny", 
        ylim = c(0, 110), col = "lightblue", main = "Medea Percentages by Generation")
library(ggplot2)



ggplot(medea_df, aes(x = generations, y = medea_percentages)) +
  geom_bar(stat = "identity") +
  labs(x = "Generation", y = "Percentage of Medea", title = "Percentage of Medea in Different Generations")+
  theme_classic()

ggplot(medea_df, aes(x = generations, y = medea_percentages)) +
  geom_line() +
  labs(x = "Generation", y = "Percentage of Medea", title = "Trend of Medea Percentage over Different Generations")

ggplot(medea_df, aes(x = generations, y = medea_percentages)) +
  geom_line(aes(group = 1), size = 1.5) +
  geom_point()+
  theme_classic()





medea_percentages <- c(54.5, 71.7, 43.3, 100, 48.8, 100, 96.8, 93.8)
generations <- c("G1", "G2", "G2", "G3", "G3", "G4", "G5", "G6")
sex <- c("Male", "Female", "Male", "Female",  "Male", "Female", "Female", "Female" )


medea_df <- data.frame(generations, medea_percentages, sex)

medea_plot <- medea_df %>% 
ggplot(aes(fill = sex, x = generations, y = medea_percentages))+
  geom_bar(stat = "identity", position = "dodge") +
  scale_fill_manual(values = c("#087474","#c91d07")) +
  theme_classic()+
  labs(x = "Generation of WT D. Suzuki crossed with Medea D. Suzuki",
       y = "Percentage (%) of progeny with Medea",
       fill = "Sex")




medea_plot

library(tidyverse)




ggplot(medea_df, aes(x = generations, y = medea_percentages)) +
  geom_boxplot(fill = "gray", color = "black") +
  geom_point(color = "red") +
  labs(x = "Generations", y = "Medea Percentages", title = "Medea Percentages across generations") +
  theme_classic()



ggplot(medea_df, aes(x = generations, y = medea_percentages, color = generations)) +
  geom_line(aes(group = 1), size = 1.5) +
  geom_point(size = 3) +
  scale_color_brewer(palette = "Set1") +
  theme_classic() +
  labs(x = "Generation of WT D. Suzuki crossed with Medea D. Suzuki",
       y = "Percentage of progeny with Medea",
       color = "Generation")



