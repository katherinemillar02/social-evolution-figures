mutants <- data.frame(
  mutant = c("ORF010078", "ORF010076"),
  wildtype_percent = c(77.8, 70.6),
  devdelay_percent = c(22.2, 29.4))


mutant <- c("ORF010078", "ORF010076", "ORF010078", "ORF010076" )
variation <- c("Wildtype", "Wildtype", "Developmental delay", "Developmental delay")
percentage <- c(77.8, 70.6, 22.2, 29.4)

mutant_df <- data.frame(mutant, variation, percentage)

mutant_plot <- mutant_df %>% 
  ggplot(aes(fill = variation, x = mutant, y = percentage))+
  geom_bar(stat = "identity", position = "dodge") +
  scale_fill_manual(values = c("#4682b4","#05c76a")) +
  theme_classic()+
  labs(x = "Mutant chromosome",
       y = "Percentage (%) of progeny",
       fill = "Progeny")

