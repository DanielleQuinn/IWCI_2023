# CODE OPTION 1 ----------------------------------------- #
infoBoxOutput("smallest_female_fish", width = 3)),

# CODE OPTION 2 ----------------------------------------- #
shinyApp(ui, server)

# CODE OPTION 3 ----------------------------------------- #
infoBoxOutput("largest_male_fish", width = 3),

# CODE OPTION 4 ----------------------------------------- #
numericInput("number_caught",
             label = "Number of Fish Caught",
             value = 1),

# CODE OPTION 5 ----------------------------------------- #
menuItem("Population", tabName = "pop", icon = icon("globe"))

# CODE OPTION 6 ----------------------------------------- #
library(dplyr)
library(shiny)
library(shinydashboard)
library(ggplot2)

# CODE OPTION 7 ----------------------------------------- #
output$smallest_female_fish <- renderInfoBox(
  infoBox(title = "Smallest Female",
          value = d %>%
            filter(Species == input$species, Sex == "f") %>%
            pull(Length) %>% min()))

# CODE OPTION 8 ----------------------------------------- #
selectInput("species", label = "Pick a Species",
            choices = c("Mummichog" = "m",
                        "Banded Killifish" = "bk"),
            selected = "m"),

# CODE OPTION 9 ----------------------------------------- #
infoBoxOutput("population_estimate", width = 3)

# CODE OPTION 10 ---------------------------------------- #
output$plot_length <- renderPlot(
  ggplot(d %>% filter(Species == input$species)) +
    geom_violin(aes(x = Sex, y = Length), fill = "grey") +
    geom_jitter(aes(x = Sex, y = Length), width = 0.25, col = "black") +
    theme_bw(16))

# CODE OPTION 11 ---------------------------------------- #
output$population_estimate <- renderInfoBox(
  infoBox(title = "Estimated Population Size",
          value = (input$number_caught * input$total_marks_in_pond) / input$number_marked))

# CODE OPTION 12 ---------------------------------------- #
d <- read.csv("fishData.csv")

# CODE OPTION 13 ---------------------------------------- #
header <- dashboardHeader(title = "Saltwater Pond Survey")

# CODE OPTION 14 ---------------------------------------- #
infoBoxOutput("smallest_male_fish", width = 3),

# CODE OPTION 15 ---------------------------------------- #
numericInput("number_marked",
             label = "Number of Caught Fish Marked",
             value = 1),

# CODE OPTION 16 ---------------------------------------- #
ui <- dashboardPage(
  header,
  sidebar,
  body)

# CODE OPTION 17 ---------------------------------------- #
plotOutput("plot_length"),

# CODE OPTION 18 ---------------------------------------- #
output$largest_male_fish <- renderInfoBox(
  infoBox(title = "Largest Male",
          value = d %>%
            filter(Species == input$species, Sex == "m") %>%
            pull(Length) %>% max()))

# CODE OPTION 19 ---------------------------------------- #
numericInput("total_marks_in_pond",
             label = "Number of Fish Marked in Pond",
             value = 1),

# CODE OPTION 20 ---------------------------------------- #
output$smallest_male_fish <- renderInfoBox(
  infoBox(title = "Smallest Male",
          value = d %>%
            filter(Species == input$species, Sex == "m") %>%
            pull(Length) %>% min()))

# CODE OPTION 21 ---------------------------------------- #
infoBoxOutput("largest_female_fish", width = 3),

# CODE OPTION 22 ---------------------------------------- #
menuItem("Fish Size", tabName = "size", icon = icon("dashboard")),

# CODE OPTION 23 ---------------------------------------- #
output$largest_female_fish <- renderInfoBox(
  infoBox(title = "Largest Female",
          value = d %>%
            filter(Species == input$species, Sex == "f") %>%
            pull(Length) %>% max()))

