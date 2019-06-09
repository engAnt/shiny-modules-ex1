# solution: pass in an id argument to sliderTextUI function

library(shiny)

sliderTextUI <- function(id) {
  ns <- NS(id)
  tagList(
    sliderInput(ns("slider"), "Slide Me", 0, 100, 1),
    textOutput(ns("num"))
  )
}
    
sliderText <- function(input, output, session) {
  output$num <- renderText({input$slider})
}

ui <- fluidPage(
  sliderTextUI("first"),
  br(),
  sliderTextUI("second"),
  br(),
  sliderTextUI("third")
)
server <- function(input, output) {
  # Give the module a unique id each time you call it.
  callModule(sliderText, "first")
  callModule(sliderText, "second")
  callModule(sliderText, "third")
}
shinyApp(ui, server)