# Server.r
setwd('c:/Users/Grant/Documents/INFO-498/a8-building-applications')
# Require necessary libraries and fucnctions
library(plotly)
library(shiny)
library(dplyr)
source('bar_graph.R')

shinyServer(function(input, output) {
  # Create a graph via the bar_graph function
  output$graph <- renderPlotly({ 
    bar_graph(iris, input$xvar, input$yvar)
  })
})