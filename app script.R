library(shiny)

ui <- fluidPage(
    selectInput(inputId = "variable",
                label = "Select Variable",
                choices = c("Happiness", "Sugar Rush", "Health Perception")),
    plotOutput("choco_graph")
)

server <- function(input, output) {
    
    yvarInput <- reactive({
        switch(input$variable,
               "Happiness" = chocolate$happiness,
               "Sugar Rush" = chocolate$sugar_rush,
               "Health Perception" = chocolate$health_perception)
    })
    
    output$choco_graph <- renderPlot({
        plot(chocolate$chocolate_buttons, yvarInput(), 
             xlab="Number of Chocolate Buttons Eaten", 
             ylab=input$variable,
             main=paste("Relationship between Eating Chocolate Buttons and", input$variable))
    })
    
    
}

shinyApp(ui = ui, server = server)