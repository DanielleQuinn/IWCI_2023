body <- dashboardBody(
  tabItems(
    tabItem(tabName = "size",
            #### ---> FIND CODE: This piece of code lets you
            #### pick which species you want to look at
            selectInput("species", label = "Pick a Species",
                        choices = c("Mummichog" = "m",
                                    "Banded Killifish" = "bk"),
                        selected = "m"),
            #### END CODE <---
            
            #### ---> FIND CODE: This piece of code indicates that the 
            #### plot of fish length should be placed here
            plotOutput("plot_length"),
            #### END CODE <---
            
            #### ---> FIND CODE: This piece of code indicates that the 
            #### "largest male fish" info box should be placed here
            infoBoxOutput("largest_male_fish", width = 3),
            #### END CODE <---
            
            #### ---> FIND CODE: This piece of code indicates that the 
            #### "smallest male fish" info box should be placed here
            infoBoxOutput("smallest_male_fish", width = 3),
            #### END CODE <---
            
            #### ---> FIND CODE: This piece of code indicates that the 
            #### "largest female fish" info box should be placed here
            infoBoxOutput("largest_female_fish", width = 3),
            #### END CODE <---
            
            #### ---> FIND CODE: This piece of code indicates that the 
            #### "smallest female fish" info box should be placed here
            infoBoxOutput("smallest_female_fish", width = 3)),
            #### END CODE <---
    
    tabItem(tabName = "pop",
            
            #### ---> FIND CODE: This piece of code lets you type in
            #### a numeric value for the number of fish that were caught
            numericInput("number_caught",
                         label = "Number of Fish Caught",
                         value = 1),
            #### END CODE <---
            
            #### ---> FIND CODE: This piece of code lets you type in
            #### a numeric value for the number of marked fish that were caught
            numericInput("number_marked",
                         label = "Number of Caught Fish Marked",
                         value = 1),
            #### END CODE <---
            
            #### ---> FIND CODE: This piece of code lets you type in
            #### a numeric value for the total number of fish that
            #### were marked in the pond last week
            numericInput("total_marks_in_pond",
                         label = "Number of Fish Marked in Pond",
                         value = 1),
            #### END CODE <---
            
            #### ---> FIND CODE: This piece of code indicates that the 
            #### info box with the population estimate should be
            #### placed here
            infoBoxOutput("population_estimate", width = 3)
            #### END CODE <---
            

    )))
