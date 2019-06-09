# problem: two inputs with the same ID
# you'll see that both sliders don't work as expected that's because there are
# two sliders sharing the same ID and Shiny can't tell which is which

library(shiny)

sliderTextUI <- function() {
  sliderInput("slider", "Slide Me", 0, 100, 1)
}
ui <- fluidPage(
  sliderTextUI(),
  textOutput("num1"),
  br(),
  sliderTextUI(),
  textOutput("num2")
)

server <- function(input, output) {
  output$num1 <- renderText({input$slider})
  output$num2 <- renderText({input$slider})
}

shinyApp(ui, server)