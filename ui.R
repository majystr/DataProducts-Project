# ui.R - a shiny application created for the Coursera course "Developing Data
# Products." Written by: Kenneth D. Graves in Feb 2015.

library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Kmeans Clustering of IRIS data"),
    sidebarPanel(
        p("Kmeans is an unsupervised machine learning technique that attempts to identify
           groupings within a dataset.  The number of initial group (k) influences the accuracy
          of the final decision boundaries"),
        p("This application demonstrates 'k' number group selection on the IRIS dataset included with R.
           To see the effect on species predictions, please select number of cluster groupings to use with the Kmeans algorithm."),
        radioButtons('k_num', 'Choose Number of Grouping Clusters:',
                     list('2', '3', '4', '5', '6')),
        p("The famous IRIS dataset contains data on 50 flowers of each of the 3 species of iris. 
          Kmeans uses sepal and petal width and length to group each observation into a group.   The best fit should be a group of 3.")
    ),
    mainPanel(
        plotOutput('plot'),
        h4("Confusion Matrix"),
        p("Columns represent the cluster counts by Kmeans groupings, while the rows show the actual species membership."),
        tableOutput('table')
    )
))

