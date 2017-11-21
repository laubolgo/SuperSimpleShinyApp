## This is a very simple *shine* app without real data. 
## I did this just to show you the Shine Apps applications and server.R calculations.

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Interactive Histogram"),
  
  sidebarPanel(
    numericInput("n", "Generate this many points", 
                 min = 1, value = 1000),
    selectInput("family", "From this family",
                choices = c("Normal",
                            "Uniform",
                            "Exponential"),
                selected = "normal"),
    sliderInput("bins", "number of bins", 
                min = 1, max = 100, value = 50)
  ),
  mainPanel(
    plotOutput("histogram")
  )
))