Fahren <- function(Fahrenheit) (Fahrenheit-32) / 1.8
shinyServer(
  function(input, output) {
          output$inputValue <- renderPrint({input$Fahrenheit})
          output$prediction <- renderPrint({Fahren(input$Fahrenheit)})
  }
)