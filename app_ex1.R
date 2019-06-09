# slider works as expected...nothing to see here

library(shiny)

ui <- fluidPage(
  sliderInput("slider", "Slide Me", 0, 100, 1),
  textOutput("num")
)

server <- function(input, output) {
  output$num <- renderText({
    input$slider
  })
}

shinyApp(ui, server)