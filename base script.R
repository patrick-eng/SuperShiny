library(shiny)

ui <- fluidPage()
### This is the user interface
### Here we build items for users to interact with and position our outputs.

server <- function(input, output) {}
### This is the serve space
### Here we build our outputs as conditional reactive elements to selections in the user interface 

shinyApp(ui = ui, server = server)
### This line of code 'stitches' the UI and Server together into an app