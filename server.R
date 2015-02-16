# server.R - a shiny application created for the Coursera course "Developing Data
# Products." Written by: Kenneth D. Graves in Feb 2015.

library(shiny)
data(iris)

shinyServer(
    function(input, output) {
        output$plot <- renderPlot({
            results <- kmeans(iris[,-5],input$k_num)
            plot(iris[c("Petal.Length", "Petal.Width")], col = results$cluster)
        })
    }
)
