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




(2366 + 121 )






# Load required packages
library(ggplot2)


# Create data matrix
mat <- matrix(c(80, 66, 44, 42),
              nrow = 4, ncol = 4, byrow = TRUE,
              dimnames = list(c("France", "Portugal", "Italy", "Spain")))
                              

# Set color scale for heatmap
my_colors <- colorRampPalette(c("white", "red"))(256)

# Create heatmap
pheatmap(mat, 
          trace = "none",
          col = my_colors,
          scale = "none",
          dendrogram = "none",
          margins = c(5, 10),
          key = TRUE,
          keysize = 1,
          key.title = NA,
          labCol = FALSE,
          cexRow = 1,
          cexCol = 1.5,
          main = "Wolbachia Prevalence in Drosophila by Country",
          xlab = "Wolbachia Status",
          ylab = "Country")



# Load required packages
library(ggplot2)
library(pheatmap)
library(RColorBrewer)

# Create data matrix
mat <- matrix(c(80, 66, 44, 42, 90, 86, 60, 52, 50),
              nrow = 9, ncol = 2, byrow = TRUE,
              dimnames = list(c("France", "Portugal", "Italy", "Spain", "Brazil", "Argentina", "China", "India", "Thailand")))

# Set color scale for heatmap
my_colors <- colorRampPalette(brewer.pal(9, "Blues"))(256)

# Create heatmap
pheatmap(mat, 
         trace = "none",
         col = my_colors,
         scale = "none",
         dendrogram = "none",
         margins = c(5, 10),
         key = TRUE,
         keysize = 1,
         key.title = NA,
         labCol = FALSE,
         cexRow = 1,
         cexCol = 1.5,
         main = "Wolbachia Prevalence in Drosophila by Country",
         xlab = "Wolbachia Status",
         ylab = "Country")

