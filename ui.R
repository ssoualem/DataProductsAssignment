require(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Visualising US State Facts and Figures with googleVis"),
  sidebarPanel(
    selectInput("stateVar", "Choose a statistic to plot:", 
                choices = stateVarInputNm),
    
    h3(textOutput("stateVarDescHeader")),
    
    textOutput("varHelpTxt"),
    
    helpText("Hover the mouse over a state to see the precise figure"),
    
    helpText("Source : \"state\" dataset in R")

  ),
  mainPanel(
    h1(textOutput("plotTitle"), align = "center"), 
    htmlOutput("gvis")
  )
)
)