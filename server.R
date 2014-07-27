
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

aagrad <- function(fio2,patm,pw,paco2,pao2,R) fio2*(patm-pw)-(paco2/R)-pao2

shinyServer(function(input, output) {
   
  output$paco2 <- renderPrint({input$paco2})
  output$pao2 <- renderPrint({input$pao2})
  output$aagrad <- renderPrint({aagrad(input$fio2,input$patm,input$pw,input$paco2,input$pao2,input$R)})
  
    
  })