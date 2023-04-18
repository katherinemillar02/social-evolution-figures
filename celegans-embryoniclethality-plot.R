# Create a data frame with the data for each mutant
mutants <- data.frame(
  mutant = c("ORF010078", "ORF010076"),
  wildtype_percent = c(77.8, 70.6),
  devdelay_percent = c(22.2, 29.4)
)

# Create the stacked bar chart
library(ggplot2)

ggplot(mutants, aes(x = mutant)) +
  geom_bar(aes(y = wildtype_percent, fill = "Wildtype"), stat = "identity") +
  geom_bar(aes(y = devdelay_percent, fill = "Developmental Delay"), stat = "identity") +
  scale_fill_manual(name = "", values = c("#3CB371", "#FFA500")) +
  xlab("Mutant Chr III NIL") +
  ylab("Percentage (%) of Progeny") +
  ggtitle("Crossed NIC Chr.III NILS to EG6180 males") +
  theme(plot.title = element_text(hjust = 0.5))+
  theme_classic() +
  ylim(0, 100) 





