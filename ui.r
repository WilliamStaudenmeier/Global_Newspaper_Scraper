library(DT)
library(shiny)
library(shinythemes)
library(dplyr)
library(plotly)
library(shinyWidgets)
library(dplyr)

library(dplyr)
library(tidyr)
library(ggplot2)
library(lubridate)
library(rvest)
library(xml2)
library(selectr)
library(stringr)
library(jsonlite)
library(wordcloud2)
library(networkD3)

navbarPage("At this Moment in Words - Live Feed",
           tabPanel("Output", fluidPage(theme = shinytheme("simplex")
                                          
                                        
                                          ),
                    
                    tags$head(
                      tags$style(HTML(".shiny-output-error-validation{color: red;}"))),
                    pageWithSidebar(
                      headerPanel('Top Words from Online Newspapers'),
                     # sidebarPanel(width = 3, 
                     
                     sidebarPanel(width = 2,
                                  
                                   
                              radioButtons(inputId="newspaper", label="Newspaper:", 
                                           choices = c(
                                             
                                              "Al Ahrar - Egypt" = "https://libyaalahrar.tv/"
                                              , "Bild - Germany" = "https://www.bild.de/"
                                              
                                              , "China Daily - China" = "http://global.chinadaily.com.cn/"
                                              , "Correio - Brazil"="https://www.correio24horas.com.br/capa/"
                                              , "Dan Tri - Vietnam"="https://dantri.com.vn/"
                                              , "De Telegraaf - Netherlands" = "https://www.telegraaf.nl/"
                                              
                                              , "Ekstra Bladet - Denmark" = "https://ekstrabladet.dk/"
                                              , "El Debate - Mexico" = "https://www.debate.com.mx/"
                                              , "El Tiempo - Colombia" = "https://www.eltiempo.com/"
                                              , "Goteborgs-Posten - Sweden" = "https://www.gp.se/"
                                              , "Herald Sun -  Australia" = "https://www.heraldsun.com.au/"
                                                       
                                                       
                                                       
                                                      
                                                  
                                                       
                                                       , "La Habana - Cuba" = "http://www.granma.cu/"
                                                       
                                              
                                              , "La Repubblica - Italy" = "https://www.repubblica.it/"
                                                       , "Le Monde - France" = "https://www.lemonde.fr/"
                                                       
                                                     
                                                      
                                                       
                                                       , "Liber Tatea - Romania"="https://www.libertatea.ro/"
                                              , "New York Times - USA" = "https://nytimes.com"
                                              , "Origo - Hungary" = "https://www.origo.hu/index.html"
                                              , "Sowetan - South Africa"="https://www.sowetanlive.co.za/"
                                                      
                                              , "Times of India - India" = "https://timesofindia.indiatimes.com/us"
                                              , "Thai Rath - Thailand" = "https://www.thairath.co.th/home"
                                              , "The Punch - Nigeria" = "https://punchng.com/"
                                              , "The Times -  UK" = "https://www.thetimes.co.uk/"
                                                       
                                              , "Yomiuri Shimbun - Japan" = "https://the-japan-news.com/"
                                                       
                                                     
                                                       
                                                       
                                                       
                                                       ), 
                                           selected = c("New York Times - USA" = "https://nytimes.com"
                                           ),inline=F)
                              
                              
                            
                              
                     ),
                     
                  
                      mainPanel(
                     
                      
                       
                        
                        fluidRow(
                         column(8,
                                wordcloud2Output("plot", width = "190%", height = "600px")
                                 
                          )
                       )
                                 
                      # ,
                       
                      # fluidRow(
                       #  column(8,
                        #        forceNetworkOutput(outputId = "net", width="200%", height = 500)
                        # )) 
                       
                        
                        
                        
                        
                        
                      )
                        
                        
                        
                    )),
           
     #############################################################################################
     
     
     
           tabPanel("Code", fluidPage(theme = shinytheme("simplex")
                                         
                                          
           ),
           
           
             
             
             
             
             
             mainPanel(
              
               
               fluidRow(
             
                        p("Data science is boring in the same way that watching a printing press print money is boring.",
                          style = "font-size:22px")
                        
                 )
                 )
              
             
               
               
               
               
               
               )
             
             
             
               )



     
                  
      
           
           




