#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  
  titlePanel("My control Work"),
  
  sidebarLayout(
    sidebarPanel(

                numericInput("a", 
           
                              label = h3("Vvedit A"), 
                              value = 1),
               numericInput("b", 
                              label = h3("Vvedit b"), 
                              value = 3),numericInput("c", 
                                                      label = h3("Vvedit c"), 
                                                      value = 1),
                 sliderInput("bins",
                   "Kilkist tochok:",
                   min = 1,
                   max = 100,
                   value = 30,
                   step = 10), radioButtons("plotType", "Vuberit typ grafica 2",
                                            c("Scatter"="p", "Line"="l"))
    ),
    
    # Show a plot of the generated distribution
    mainPanel( img(src="aa.jpg", height = 300, width = 300, textOutput("text5"),
                   textOutput("text1"),textOutput("text2"),textOutput("text3"),textOutput("text6"),textOutput("text4"),
    
       plotOutput("distPlot"),plotOutput("Plot"),plotOutput("ABCplot")
    )
  )
)))
