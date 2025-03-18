###
# notes from class
###

# can use quick stats through USDA to develop data sets picking the variable that
# you are particularly interested in --> strawberry, chemicals, economics, etc

# when writing make a file called myfunctions.R and list all the used functions 
# there then use source("myfunctions.R") to access those functions from elsewhere'


# start of code that can be used to organize the chemicals used
# chemical_counts <- survey_chem %>%
#   group_by(`Chemical Name`) %>%

library(kableExtra)

chemical_counts %>%
  kable("html", caption = "Chemical Counts by Chemical Name") %>%
  kable_styling("striped", full_width = False) %>%
  column_spec(1, bold = True, color = "blue") %>%
  column_spec(2, background = "#f2f2f2") %>%
  row_spec(0, bold = True, font_size = 14)

# can also add headers to the table
# add_header_above()
# "hover" -> under kable_styling which shows around where your cursor is 
# can also use datatable()