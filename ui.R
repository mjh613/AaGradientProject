
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("New Application"),
  
  # Sidebar with a slider input for number of observations
  sidebarPanel(
    numericInput('pao2','PaO2',100,min=0,max=1000,step=1),
    numericInput('paco2','PaCO2',30,min=0,max=100,step=1),
    numericInput('fio2','FiO2',0.21,min=0,max=1.0,step=0.01),
    numericInput('patm','P_atmospheric (mmHg)',760,min=500,max=1000,step=10),
    numericInput('pw','P_water (mmHg)',47,min=40,max=60,step=1),
    numericInput('R','Respiratory quotient',0.8,min=0,max=1.0,step=0.05),
    submitButton('Submit')
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    h3("Recap"),
    h4("You told me that the patient's PaO2 is"),
    verbatimTextOutput("pao2"),
    h4("and that the patient's PaCO2 is"),
    verbatimTextOutput("paco2"),
    h3("A-a Gradient"),
    h4("Based on calculations, the patient's A-a graident is"),
    verbatimTextOutput("aagrad")
  )
))
