# Create a data frame with the data for each mutant
mutants <- data.frame(
  mutant = c("ORF010078", "ORF010076"),
  wildtype_percent = c(77.8, 70.6),
  devdelay_percent = c(22.2, 29.4))

# Create the stacked bar chart
library(ggplot2)

mutant_plot <- mutants %>% 
ggplot(aes(fill = devdelay_percent, x = mutant, y = wildtype_percent)) +
  geom_bar(stat = "identity", position = "dodge") +
  scale_fill_manual(values = c("#087474","#c91d07")) +
  theme_classic()+
  labs(x = "Generation of WT D. Suzuki crossed with Medea D. Suzuki",
       y = "Percentage (%) of progeny with Medea",
       fill = "Sex")
 


medea_plot <- medea_df %>% 
  ggplot(aes(fill = sex, x = generations, y = medea_percentages))+
  geom_bar(stat = "identity", position = "dodge") +
  scale_fill_manual(values = c("#087474","#c91d07")) +
  theme_classic()+
  labs(x = "Generation of WT D. Suzuki crossed with Medea D. Suzuki",
       y = "Percentage (%) of progeny with Medea")



library(ggplot2)

mutants <- data.frame(
  mutant = c("ORF010078", "ORF010076"),
  wildtype_percent = c(77.8, 70.6),
  devdelay_percent = c(22.2, 29.4)
)

ggplot(mutants, aes(x = mutant, y = wildtype_percent, fill = "Wildtype")) +
  geom_col(position = "dodge") +
  geom_col(aes(y = devdelay_percent, fill = "Developmental Delay")) +
  scale_fill_manual(values = c("blue", "red"), name = "Mutation") +
  labs(title = "Percentages of Wildtype and Developmentally Delayed Mutants",
       x = "Mutant",
       y = "Percentage") +
  theme_bw()


library(ggplot2)

ggplot(mutants, aes(x = mutant, y = wildtype_percent, fill = "Wildtype")) +
  geom_bar(stat = "identity", position = "dodge", color = "black", width = 0.5) +
  geom_bar(aes(y = devdelay_percent, fill = "Dev Delay"), stat = "identity", position = "dodge", color = "black", width = 0.5) +
  scale_fill_manual(values = c("Wildtype" = "blue", "Dev Delay" = "red")) +
  xlab("Mutant") +
  ylab("Percentage") +
  ggtitle("Comparison of Wildtype and Dev Delay Mutants") +
  theme_bw()



library(ggplot2)

# Create a new column for the percentages
mutants$total <- mutants$wildtype_percent + mutants$devdelay_percent

# Plot the barplot with dodged bars
ggplot(mutants, aes(x = mutant, y = total, fill = mutant)) +
  geom_bar(position = "dodge", stat = "identity") +
  scale_fill_manual(values = c("red", "blue"), 
                    labels = c("Wildtype", "Dev Delay")) +
  ylab("Percentage") +
  ggtitle("Mutant Barplot")


2465

# Set up the data
mutants <- data.frame(
  mutant = c("ORF010078", "ORF010076"),
  wildtype_percent = c(77.8, 70.6),
  devdelay_percent = c(22.2, 29.4)
)





