# Create a sample data frame
df <- data.frame(region = c("North America", "Europe", "Asia", "Africa"),
                 prevalence = c(0.5, 0.7, 0.3, 0.1))

# Convert the data frame to a matrix
mat <- as.matrix(df$prevalence)

# Create the heat map
library(pheatmap)
pheatmap(mat,
         scale = "none",
         color = colorRampPalette(c("white", "steelblue"))(100),
         cluster_rows = FALSE,
         cluster_cols = FALSE,
         show_colnames = FALSE,
         show_rownames = TRUE,
         annotation_row = df$region,
         annotation_colors = "black")




# Create a sample data frame
df <- data.frame(region = c("North America", "Europe", "Asia", "Africa"),
                 prevalence = c(0.5, 0.7, 0.3, 0.1))

# Convert the data frame to a matrix
mat <- as.matrix(df$prevalence)

# Define row labels
row_labels <- df$region

# Create the heatmap with row annotations
library(pheatmap)
pheatmap(mat,
         scale = "none",
         color = colorRampPalette(c("white", "steelblue"))(100),
         cluster_rows = FALSE,
         cluster_cols = FALSE,
         show_colnames = FALSE,
         show_rownames = TRUE,
         annotation_row = mat,
         annotation_colors = "black",
         legend = TRUE,
         legend_breaks = seq(0.5, 0.7, length.out = 0.7),
         legend_labels = c("Country 1", "Country 2", "Country 3", "c4"), 
         main = "Heat Map of Example Data")
