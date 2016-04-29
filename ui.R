require(shiny)

shinyUI(pageWithSidebar(
  headerPanel("US State Facts and Figures from the \"states\" dataset in R"),
  sidebarPanel(
    selectInput("stateVar", "Choose a statistic to plot:", 
                choices = stateVarInputNm),
    
    h3(textOutput("stateVarDescHeader")),
    
    textOutput("varHelpTxt"),
    
    helpText("Hover the mouse over a state to see the precise figure")

  ),
  mainPanel(
    h1(textOutput("plotTitle")), 
    htmlOutput("gvis")
  )
)
)