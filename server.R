library(googleVis)
library(shiny)
library(datasets)

# Objects shared across all sessions
data(state)
states <- data.frame(state.name, state.x77)
stateVarNm <- names(states)[-1]   # remove state.name because it isn't a variable to plot

shinyServer(function(input, output) {
  
  # Get the index of the chosen state variable
  StateVarIndex <- reactive({
    # Match user input with variable name in dataset
    dimIndex <- which(stateVarInputNm == input$stateVar)
    dimIndex
  })
  
  # Update plot title
  output$plotTitle <- renderText({
    paste(stateVarInputNm[StateVarIndex()], "in the United States")
  })
  
  # Plot the chosen statistics on the US map with googleVis
  output$gvis <- renderGvis({
    varToPlot <- stateVarNm[StateVarIndex()]
    gvisGeoChart(states, "state.name", varToPlot,
                 options=list(region="US", 
                              displayMode="regions", 
                              resolution="provinces",
                              width="100%", height="100%",
                              forceIFrame='TRUE'))
    # forceIFrame option because of missing scale on the plot when uploading to shinyapps.io
  })
  
  # Statistics information
  output$varHelpTxt <- renderText({
    stateVarDesc[StateVarIndex()]
  })
  
  output$stateVarDescHeader <- renderText({
    stateVarDescHeader
  })
    
})
