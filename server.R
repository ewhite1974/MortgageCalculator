
library(shiny)

# Define server logic to calculate the monthly payment
shinyServer(function(input, output) {
   
  output$text1 <- renderText({
    
    L <- input$loan
    y <- input$years
    n <- y * 12
    i <- input$interest 
    c <- (i/100)/12
    P <- L*(c*(1 + c)^n)/((1 + c)^n - 1)
    P <- round(P, digits = 2)
    paste("$", P)
  })
  
})
