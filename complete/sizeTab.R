#### ---> FIND CODE: This piece of code create a plot
#### of fish length, where males and females are split into two groups.
#### You can change the colours!
output$plot_length <- renderPlot(
  ggplot(d %>% filter(Species == input$species)) +
    geom_violin(aes(x = Sex, y = Length), fill = "grey") +
    geom_jitter(aes(x = Sex, y = Length), width = 0.25, col = "black") +
    theme_bw(16))
#### END CODE <---

#### ---> FIND CODE: This piece of code will find the
#### length of the largest male fish and send ("render")
#### that information to an info box.
output$largest_male_fish <- renderInfoBox(
  infoBox(title = "Largest Male",
          value = d %>%
            filter(Species == input$species, Sex == "m") %>%
            pull(Length) %>% max()))
#### END CODE <---

#### ---> FIND CODE: This piece of code will find the
#### length of the smallest male fish and send ("render")
#### that information to an info box.
output$smallest_male_fish <- renderInfoBox(
  infoBox(title = "Smallest Male",
          value = d %>%
            filter(Species == input$species, Sex == "m") %>%
            pull(Length) %>% min()))
#### END CODE <---

#### ---> FIND CODE: This piece of code will find the
#### length of the largest female fish and send ("render")
#### that information to an info box.
output$largest_female_fish <- renderInfoBox(
  infoBox(title = "Largest Female",
          value = d %>%
            filter(Species == input$species, Sex == "f") %>%
            pull(Length) %>% max()))
#### END CODE <---

#### ---> FIND CODE: This piece of code will find the
#### length of the smallest male fish and send ("render")
#### that information to an info box.
output$smallest_female_fish <- renderInfoBox(
  infoBox(title = "Smallest Female",
          value = d %>%
            filter(Species == input$species, Sex == "f") %>%
            pull(Length) %>% min()))
#### END CODE <---