library(shiny)
library(ggplot2)
library(readr)
library(ggthemes)
martesa18 <- read_csv("data/martesa18.csv")
martesa18 <- martesa18[which(martesa18$numri>0),]

linkedScatterUI <- function(id) {
  ns <- NS(id)
  
  fluidRow(
    column(5, plotOutput(ns("plot1"), brush = ns("brush"))),
    column(5, plotOutput(ns("plot2"), brush = ns("brush")))
  )
}
linkedScatter <- function(input, output, session, data, left, right) {
  dataWithSelection <- reactive({
    brushedPoints(data(), input$brush, allRows = TRUE)
  })
  
  output$plot1 <- renderPlot({
    scatterPlot1(dataWithSelection(), left())
  })
  
  output$plot2 <- renderPlot({
    scatterPlot2(dataWithSelection(), right())
  })
  
  return(dataWithSelection)
}

scatterPlot1 <- function(data, cols) {
  ggplot(data, aes(fill=gjinia, y=numri, x=mosha)) + 
    geom_bar(position="dodge", stat="identity", color="white", fill="blue")+ geom_smooth(method = "loess", se = FALSE, color = "Blue") +theme_economist() + 
    scale_color_economist()+
    ggtitle("Numrit te individeve dhe grupmoshes") 
}
scatterPlot2 <- function(data, cols) {
  ggplot(data, aes(fill=perqindja, y=numri, x=mosha)) + 
    geom_bar(position="dodge", stat="identity", color="white", fill="blue") + geom_smooth(method = "loess", se = FALSE)+
    theme_economist()  + 
    scale_color_economist()+
    ggtitle("Numrit te individeve dhe perqindjes te martesave")
}