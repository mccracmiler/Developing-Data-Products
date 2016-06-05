# load shiny package
library(shiny)
# begin shiny UI
shinyUI(navbarPage("Happy Health",
    # create first tab
    tabPanel("Documentation",
        # load MathJax library so LaTeX can be used for math equations
        withMathJax(), h3("Calculator for Heart Rate and Optimal Weight"),
        # paragraph and bold text
        br(), p("The ", strong("Maximum heart rate")," can be calculated using ", strong(em("gender")),
          " and ", strong("age")),
        br(), tags$ol(
            tags$li("Male maximum heart rate = 220- age"),
            tags$li("Female maximum heart rate = 206 -(0.85 * age)"),
            tags$li("Aerobic heart rate = 70%-80% max"),
            tags$li("Aerobic heart rate = 80%-85% max")),  
        br(), p ("The Optimal Weight using the Hamwi formula is calculated based on", strong(em("gender")), " and ", strong("height")),
        # break used to space sections
        br(), tags$ol(
            tags$li("Male optimal weight = 105.82 lbs + 5.95 lbs per inch over 60 inches"),
            tags$li("Female optimal weight = 100.31 lbs + 4.85 lbs per inch over 60 inches"),
            tags$li("Subtract 2.0 lbs per inch if less than 60 inches")
        )),
    # second tab
    tabPanel("Calculators",
        fluidRow(
            column(12,h4("Enter data ",
                         span(textOutput("population", inline = TRUE),
                         style = "color: red; font-size: 20px"),
                         " gender, age and height"),
                   tags$hr(),htmlOutput("popHist"),
                   # additional style
                   style = "padding-left: 20px"
            )
        ),                    
         # absolute panel
        absolutePanel(
            # position attributes
            top = 125, left = 0, right =0,
            fixed = FALSE,
            # panel with predefined background
            wellPanel(
                fluidRow(
                    # Input data
                    column(4, selectInput("gender", label = h3("Gender"), 
                                choices = list("Male" = "Male", "Female" = "Female"), 
                                selected = "Male"),   
                           p(strong("Gender selected: "),
                           textOutput("genderout", inline = TRUE))),
                    column(4, sliderInput("age", "Age in years:",
                                          min = 10, max = 100, value = 45),
                           p(strong("Age Entered: "),
                           textOutput("ageout", inline = TRUE))),
                    column(4, sliderInput("height", "Height in inches:",
                                          min = 36, max = 96, value = 68),
                           p(strong("Height entered: "),
                           textOutput("heightout", inline = TRUE)))),
            style = "opacity: 0.92; z-index: 100;"
            )),
            absolutePanel(
            # position attributes
            top = 400, left = 0, right =0,
            fixed = TRUE,
            # panel with predefined background
            wellPanel(
                fluidRow(
                    # Output data
                    column(6, p(strong("Maximum Heart Rate: "),
                           textOutput("heartratemax", inline = TRUE)),
                           p(strong("Aerobic Heart Rate ~ 75% Max: "),
                           textOutput("heartrateaerobic", inline = TRUE)),
                           p(strong("Anerobic Heart Rate ~ 82.5% Max: "),
                           textOutput("heartrateanaerobic", inline = TRUE))),
                    column(6, p(strong("Optimal Weight: "),
                           textOutput("weightrec", inline = TRUE)),
                           p(strong("You can eat more if <= "),
                           textOutput("weightrecmin", inline = TRUE)),
                           p(strong("Start controlling portions if >= "),
                           textOutput("weightrecmax", inline = TRUE))),
                           
            style = "opacity: 0.92; z-index: 100;"
            )))    
            )
))