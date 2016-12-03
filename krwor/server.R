

library(shiny)


shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    x    <- faithful[, 2] 
    bins <- seq(min(x), max(x), length.out = input$bins )
    hist(x, breaks = bins, col = 'black', border = 'white')
    
    })
  output$Plot <- renderPlot({
    x <- rnorm(input$bins)
    y <- rnorm(input$bins)
  
    plot(x, y,type=input$plotType)
  })
    output$ABCplot <- renderPlot({
    a<-(input$a)
    b<-(input$b)
    c<-(input$c)
    D<-b*b-4*(a)*(input$c)
    if (D>0){ 
      x1<-(-b+sqrt(D))/(2*a)
      x2<-(-b-sqrt(D))/(2*a) }
    else if (D==0) { x3<-( -b/(2*a)) }
    else
      {output$text4 <- renderText({ 
      paste("root no")
      })}
    output$text5 <- renderText({ 
      paste("Rozv kvadrat rivn")
    })
    
    output$text1 <- renderText({ 
      paste("Root x1=", x1)
    })
   
    output$text2 <- renderText({ 
      paste("Root x2=", x2)
    })
    output$text3 <- renderText({ 
      paste("x=", x3)
    })
    output$text6 <- renderText({ 
      paste("Desc=", D)
    })
   # for (i in 1:16){
    #  y<-a*x0*x0+b*x0+c
     # plot(x0,y, type = 'l')
     
   # } 
    

  })
})
