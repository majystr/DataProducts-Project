# server.R - a shiny application created for the Coursera course "Developing Data
# Products." Written by: Kenneth D. Graves in Feb 2015.

library(shiny)
data(iris)

shinyServer(
    function(input, output) {
        output$plot <- renderPlot({
            set.seed(10)
            results <- kmeans(iris[,-5],input$k_num)
            plot(iris[c("Petal.Length", "Petal.Width")], col = results$cluster,
                 main = "Cluster Groupings by IRIS data Petal Width & Length")
        })
        output$table <- renderTable({
            set.seed(10)
            results <- kmeans(iris[,-5],input$k_num)
            table(iris$Species,results$cluster)
        })
    }
)
