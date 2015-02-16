# ui.R - a shiny application created for the Coursera course "Developing Data
# Products." Written by: Kenneth D. Graves in Feb 2015.

library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Kmeans Clustering of IRIS data"),
    sidebarPanel(
        radioButtons('k_num', 'Choose Number of Clusters:',
                     list('2', '3', '4', '5'))
    ),
    mainPanel(
        plotOutput('plot')
    )
))

