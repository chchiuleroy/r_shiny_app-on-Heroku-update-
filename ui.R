library(shiny)

# Define UI for random distribution application 
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("HOA-BI-testing"),
  
  # Sidebar with controls to select the random distribution type
  # and number of observations to generate. Note the use of the br()
  # element to introduce extra vertical spacing
  sidebarPanel(
    radioButtons("dist", "Distribution type:",
                 list("Growth rate" = "norm",
                      "Failure rate" = "unif",
                      "Sales" = "lnorm",
                      "Inventory" = "exp")),
    br(),
    
    sliderInput("n", 
                "Number of observations:", 
                value = 100,
                min = 40, 
                max = 600)
  ),
  
  # Show a tabset that includes a plot, summary, and table view
  # of the generated distribution
  mainPanel(
    tabsetPanel(
      tabPanel("Plot", plotOutput("plot"))
      # tabPanel("Summary", verbatimTextOutput("summary")), 
      # tabPanel("Table", tableOutput("table"))
    )
  )
))