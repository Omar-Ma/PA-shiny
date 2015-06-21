library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Convert Fahrenheit into Celsius"),
  sidebarPanel(
          numericInput('Fahrenheit', 'Fahrenheit Degree', 90, min = 30, max = 200, step = 0.5),
          submitButton('Submit')
          ),
  mainPanel(
          h3('Celsius Degree'),
          h4('You entered'),
          verbatimTextOutput("inputValue"),
          h4('Which resulted in a Celsius Degree of '),
          verbatimTextOutput("prediction")
  )
))