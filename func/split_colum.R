#Function: splits a column with a delimiter into new columns
#Parameters:
#- data: data frame
#- column_name: column name to split (string)
#- separator: separator (default is "|")
#- prefix: prefix of the new column. The original column name is used by default
#- suffix: suffix of the new column, default to "\u a"

library(stringr)
# 
# data = soc
# column_name = "p6160_i0"
# separator = "\\|"
# prefix = NULL
# suffix = "_a"



#The function splits a column containing a delimiter into multiple columns
split_column <- function(data, column_name, separator = "\\|", prefix = NULL, suffix = "_a") {
  print( paste0("split col: ", column_name))
  data<-as.data.frame(data)
  #Determine the maximum number of partitions
  column_data <- unique(data[[column_name]])
  max_splits <- max(sapply(strsplit(column_data, separator), length), na.rm = TRUE)
  
  #Determine prefix
  if (is.null(prefix)) prefix <- column_name
  
  #Create a new column name
  new_col_names <- paste0(prefix, suffix, 0:(max_splits-1))
  
  #Split and assign at one time
  data[new_col_names] <- str_split_fixed(data[[column_name]], separator, max_splits)
  
  print( paste0("Created    ", length(new_col_names), "    new columns: ", paste0(new_col_names, collapse = ",  ")))
  return(data)
}


# sle <- split_column (
#   data = sle,
#   column_name = "p6145_i0",
#   separator = "\\|",
#   prefix = NULL,
#   suffix = "_a"
# )
# names(sle)







