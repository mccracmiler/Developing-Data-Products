
heartrate <- function(age,gender) {
if (gender == "Male") {
                heartratemax <- 220 - age
            } else {
                heartratemax <- 206 - (0.85 * age)
            }    

return(heartratemax)
}

optweight <- function(height,gender) {
if (gender == "Male") {
            if (height >= 59) {
                    optweightmin  <- 105.82 + ((height-60)* 5.95)
                } else { 
                    optweightmin  <- 105.82 + ((height-60)* 2.0)
                }    
            } else {
            if (height >= 59) {
                    optweightmin  <- 100.31 + ((height-60)* 4.85)
                } else { 
                    optweightmin  <- 100.31 + ((height-60)* 4.85)
                }    
            }    

return(optweightmin)
}

# start shinyServer
shinyServer(
# specify input/output function
function(input, output) {
    # set gender
    output$genderout <- renderText({input$gender})
    # set age 
    output$ageout <- renderText({as.numeric(input$age)})
    # set height 
    output$heightout <- renderText({as.numeric(input$height)})
    # set heart rate max 
    output$heartratemax <- renderPrint({heartrate(input$age,input$gender)})
    output$heartrateaerobic <- renderPrint({heartrate(input$age,input$gender)*.75})
    output$heartrateanaerobic <- renderPrint({heartrate(input$age,input$gender)*.825})
    output$weightrec <- renderPrint({optweight(input$height,input$gender)})
    output$weightrecmin <- renderPrint({optweight(input$height,input$gender)*.90})
    output$weightrecmax <- renderPrint({optweight(input$height,input$gender)*1.10})
}

)




