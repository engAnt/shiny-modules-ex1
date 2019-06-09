# solution: pass in an id argument to sliderTextUI function

library(shiny)

sliderTextUI <- function(id) {
  sliderInput(id, "Slide Me", 0, 100, 1)
}

ui <- fluidPage(
  sliderTextUI("slider1"),
  textOutput("num1"),
  br(),
  sliderTextUI("slider2"),
  textOutput("num2")
)
server <- function(input, output) {
  output$num1 <- renderText({input$slider1})
  output$num2 <- renderText({input$slider2})
}

shinyApp(ui, server)