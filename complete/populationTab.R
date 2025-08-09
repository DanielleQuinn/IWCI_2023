#### ---> FIND CODE: This piece of code will use the
#### information you gave about the number of
#### marked and unmarked fish you caught and
#### calculate a population estimate for the whole pond
output$population_estimate <- renderInfoBox(
  infoBox(title = "Estimated Population Size",
          value = (input$number_caught * input$total_marks_in_pond) / input$number_marked))

#### END CODE <---
