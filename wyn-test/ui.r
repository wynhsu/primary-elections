library(plotly)
library(shiny)

shinyUI(navbarPage('Primary Election',
                   tabPanel('Republican',
                            titlePanel('Primary Election Republican Party Statistics'),
                            h3('Collaboration project by Soichi Tanabe, Yubo Wang, and Wynston Hsu'),
                            br(),
                            br(),
                            p("This project contains data on the 2016 presidential primary. The data comes from an online source that is cited in the GitHub repository."),
                            br(),
                            br(),
                            # Create sidebar layout
                            sidebarLayout(
                              
                              # Side panel for controls
                              sidebarPanel(
                                h2("Select only the counties within the range you are interested for."),
                                br(),
                                br(),
                                br(),
                                br(),
                                br(),
                                # Input to select variable to map
                                h3("Ethnicities"),
                                sliderInput("race1", label=h4("African American Percentage"), min = 0, max = 100, value = c(0, 100)),
                                sliderInput("race2", label=h4("Caucasian Percentage"), min = 0, max = 100, value = c(0, 100)),
                                sliderInput("race3", label=h4("Asian Percentage"), min = 0, max = 100, value = c(0, 100)),
                                sliderInput("race4", label=h4("Hispanic Percentage"), min = 0, max = 100, value = c(0, 100)),
                                br(),
                                br(),
                                h3("Education"),
                                sliderInput("education1", label=h4("High School Graduate Percentage"), min = 0, max = 100,  value = c(0, 100)),
                                sliderInput("education2", label=h4("College Graduate Percentage"), min = 0, max = 100,  value = c(0, 100)),
                                br(),
                                br(),
                                h3("Income"),
                                sliderInput("income1", label=h4("Household Income"), min = 0, max = 100000,  value = c(0, 100000))
                              ),
                              
                              mainPanel(
                                br(),
                                br(),
                                plotlyOutput('plot1'),
                                # br(),
                                # br(),
                                # br(),
                                # plotlyOutput('plot2'),
                                # br(),
                                # br(),
                                # br(),
                                # plotlyOutput('plot3'),
                                # br(),
                                # br(),
                                # br(),
                                # plotlyOutput('plot4')
                              )
                            ))
))