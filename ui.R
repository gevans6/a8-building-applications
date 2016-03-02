library(shiny)
library(plotly)


shinyUI(fluidPage(

  # Create a title
  titlePanel('Iris Dataset'),
  # Create sidebar layout
  sidebarLayout(
    
    # Side panel for controls
    sidebarPanel(
      
      # Input to select y variable to graph
      selectInput("yvar", label = h3("Choose Measured Value"), 
                  choices = list("Sepal Length" = 'Sepal.Length', "Sepal Width" = 'Sepal.Width', "Petal Length" = 'Petal.Length', "Petal Width" = "Petal.Width"), 
                  selected = "Sepal.Length"),
      
      # check box group to select which species to graph on the x axis
      checkboxGroupInput("xvar", label = h3("Choose Species"), 
                         choices = list("setosa" = "setosa", "versicolor" = "versicolor", "virginica" = "virginica"),
                         selected = "setosa"),
      
      
      hr(),
      fluidRow(column(3, verbatimTextOutput("value")))
      
    ),
    
    # Main panel: display plotly bar graph
    mainPanel(
      "Graph", plotlyOutput('graph')
    )
  )
))