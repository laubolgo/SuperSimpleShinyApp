#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram

  shinyServer(function(input, output) {
    data <- reactive({ 
      FUN <- switch(input$family,
                    "Normal" = rnorm,
                    "Uniform" = runif,
                    "Exponential" = rexp)
      FUN(input$n)
    })
    
    output$histogram <- renderPlot({
      hist(data(), breaks = input$bins)
    })
    
  })