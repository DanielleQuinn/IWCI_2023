# --------------------------------------------------------------------- #
# STEP ONE: Get tools from the library -------------------------------- #
# --------------------------------------------------------------------- #

##### ---> FIND CODE: This piece of code collects all of the
##### different library tools that this app will use


##### END CODE <---

# --------------------------------------------------------------------- #
# STEP TWO: Import the saltwater pond fish data ----------------------- #
# --------------------------------------------------------------------- #

##### ---> FIND CODE: This piece of code reads a data set
##### called fishData.csv


##### END CODE <---

# --------------------------------------------------------------------- #
# STEP THREE: Create the main pieces of the User Interface (UI) ------- #
# --------------------------------------------------------------------- #

#### ---> GO COMPLETE dashboardHeader.R
source("dashboardHeader.R", local = TRUE)

#### ---> GO COMPLETE dashboardSidebar.R
source("dashboardSidebar.R", local = TRUE)

#### ---> GO COMPLETE dashboardBody.R
source("dashboardBody.R", local = TRUE)

# --------------------------------------------------------------------- #
# STEP FOUR: Put the pieces together to create the User Interface (UI)- #
# --------------------------------------------------------------------- #

##### ---> FIND CODE: This piece of code creates the ui


##### END CODE <---

# --------------------------------------------------------------------- #
# STEP FIVE: Create an interactive server ----------------------------- #
# --------------------------------------------------------------------- #

server <- function(input, output) {

  # STEP FIVE (A): What does the Fish Size tab do?
  #### ---> GO COMPLETE sizeTab.R
  source("sizeTab.R", local = TRUE)
  
  # STEP FIVE (B): What does the Population tab do?
  #### ---> GO COMPLETE populationTab.R
  source("populationTab.R", local = TRUE)
  
}

# --------------------------------------------------------------------- #
# STEP SIX: Run the application! -------------------------------------- #
# --------------------------------------------------------------------- #

##### ---> FIND CODE: This piece of code runs the shiny app using the
##### ui and the server

##### END CODE <---

