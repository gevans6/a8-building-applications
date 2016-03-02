bar_graph <- function(df, xvar, yvar) {
    #create a new frame that only has the mean values of the selected species
    newframe <- df %>% 
    group_by(Species) %>%
    summarise("Sepal.Length" = mean(Sepal.Length), "Sepal.Width" = mean(Sepal.Width), 
              "Petal.Length" = mean(Petal.Length), "Petal.Width" = mean(Petal.Width)) %>% 
    filter(Species %in% xvar)
    
    #graph the new frame with the single y variable that was passed in
    plot_ly(newframe, x = Species, y = eval(parse(text = yvar)), type = 'bar') %>%
    layout(title = 'Average Values of Specifications of Each Species') %>% 
    return()
}