library(shiny)


shinyUI(fluidPage(
  titlePanel("Mortgage Calculator"),
  sidebarLayout(
    sidebarPanel(
  numericInput("loan", "How much money are you borrowing?",
               value = 500000, min = 20000, max = 5000000, step = 10000), 
  numericInput("years", "How many years is the loan (valid values is 5-30)?",
                value = 30, min = 5, max = 30, step = 1),
  sliderInput("interest", "What is the interest rate of the loan?",
               value = 4.0, min = 1.5, max = 10.0, step = .1)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h3("Based upon your inputs, you can expect a monthly payment of: "),
       textOutput("text1")
    )
  )
))
