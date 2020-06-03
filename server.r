

responses = c("https://nytimes.com"
  , "https://dantri.com.vn/"
  , "https://www.gp.se/"
  , "https://the-japan-news.com/"
  , "http://global.chinadaily.com.cn/"
  , "https://www.bild.de/"
  , "http://www.granma.cu/"
  , "https://timesofindia.indiatimes.com/us"
  , "https://www.thairath.co.th/home"
  , "https://www.thetimes.co.uk/"
  , "https://www.debate.com.mx/"
  , "https://www.lemonde.fr/"
  , "https://www.telegraaf.nl/"
  , "https://www.heraldsun.com.au/"
  , "https://www.repubblica.it/"
  , "https://www.correio24horas.com.br/capa/"
  , "https://www.libertatea.ro/"
  , "https://punchng.com/"
  , "https://www.sowetanlive.co.za/"
  , "https://libyaalahrar.tv/"
  ,  "https://www.eltiempo.com/"
  ,  "https://ekstrabladet.dk/"
  , "https://www.origo.hu/index.html"
  
  
)



  

function(input, output, session) {
  
  

  




  ### create map dataframe by combining with zips and zone data
  
  datasetInput = reactive({
    
   
    
    
    scrappedurl <- input$newspaper
    
    
    
    news <- read_html(scrappedurl)
    
    bodyHtml =  html_nodes(news, c("p"))
    
    body <- html_text(bodyHtml)
    
    
    
    
    body = as.list(body)
    
    body = unlist(body)
    
    df = as.data.frame(body)
    
    colnames(df)[1]= "index"
    
    list = as.character(c(1:1000))
    
    df = df %>% separate(index, list, by =" ")
    
    df = df %>% gather(index)
    
    
    df$index = NULL
    
    colnames(df)[1] = "word"
    
 
    
    df = df %>% group_by(word) %>% mutate(freq = n()) %>% distinct()
    
    data= na.omit(df)
    
    
    list = c("p1", "p2", "p3", "h1", "h2" ,"title", "table")
    
    for ( i in list) {
      bodyHtml =  html_nodes(news, c("p"))
      
      body <- html_text(bodyHtml)
      
      
      
      
      body = as.list(body)
      
      body = unlist(body)
      
      df = as.data.frame(body)
      
      colnames(df)[1]= "index"
      
      list = as.character(c(1:400))
      
      df = df %>% separate(index, list, by =" ")
      
      df = df %>% gather(index)
      
      
      df$index = NULL
      
      colnames(df)[1] = "word"
      
      
      
      df = df %>% group_by(word) %>% mutate(freq = n()) %>% distinct()
      
      df= na.omit(df)
      
      if (nrow(df)>2) {
        
        data = rbind(data, df) 
      }
    
      
      
      
    }
    

    return(data)
    
    
    
  })
  
  datasetInput2 = reactive({
  
    scrappedurl <- as.character(input$newspaper)
    
    if (scrappedurl==responses[1] ) {
      
    colors = c("red", "blue")
      
      
      
    }
    
    
    if (scrappedurl==responses[2] ) {
      
      colors=c("red", "yellow") #vietnam
      
      
      
    }
    
    if (input$newspaper==responses[3] ) {
      
      colors = c("blue", "yellow") #sweden
      
      
      
    }
    
    if (input$newspaper==responses[4] ) {
      
      colors = c("red") #japan
      
      
      
    }
    
    
    if (input$newspaper==responses[5] ) {
      
      
      colors = c("red") #china
      
      
      
    }
    
    if (input$newspaper==responses[6] ) {
      
      
      
      colors = c("black", "yellow", "red") #germany
      
      
    }
    
    
    if (input$newspaper==responses[7] ) {
      
      
      
      
      colors = c("blue", "red") #cuba
      
      
    }
    
    if (input$newspaper==responses[8] ) {
      
      
      
      
      
      colors = c("orange", "blue", "green") #india
      
      
    }
    
    
    
    if (input$newspaper==responses[9] ) {
      
     
      
      colors = c("blue", "red") #thailand
      
      
    }
    
    
    if (input$newspaper==responses[10] ) {
      
      
      
      
      colors = c("blue", "red") #UK  
      
    }
    
    
    if (input$newspaper==responses[11] ) {
    
    colors = c("green", "red", "brown") #mexico
    

    
    
    
    }
    
    if (input$newspaper==responses[12] ) {
      
      
      colors = c("blue", "red") #france
      
      
      
      
      
    }
    if (input$newspaper==responses[13] ) {
      

      
      colors = c("blue", "red") #netherlands
      
     
      
      
      
    }
    
    if (input$newspaper==responses[14] ) {
      
      

      
      colors = c("blue", "red") #australia
      
      
    }
    
    if (input$newspaper==responses[15] ) {
      
      
      
      colors = c("green", "red") #italy
      
      
      
      
    }
    
    if (input$newspaper==responses[16] ) {
      
      
  
      
      
      colors = c("green", "yellow") #brazil
      
      
      
      
      
    }
    

    
    if (input$newspaper==responses[17] ) {
      
      
    
      colors = c("red", "yellow", "blue") #romania
      
      
      
    }
    
    if (input$newspaper==responses[18] ) {
      
      
      

      
      colors = c("green") #nigeria
      
      
      
    }
    
    if (input$newspaper==responses[19] ) {
      
      
      
  
      
      colors=c("red","green", "black", "yellow", "blue") #southafrica
      
    
      
      
    }
    
    if (input$newspaper==responses[20] ) {
      
      
      
    
      
      colors =c("red", "black", "gold") #egypt
   
      
      
      
    }
    
    if (input$newspaper==responses[21] ) {
      
      
   
      
      colors =c("red", "blue", "gold") #colombia
      
     
      
      
      
    }
    
    if (input$newspaper==responses[22] ) {
      
      
      
      
    
      
      colors =c("red") #denmark
      
      
      
      
      
    }
    
    
    if (input$newspaper==responses[23] ) {
      
      
      
  
      
      colors =c("red", "green") #hungary
      
      
    }
    
    
    
    return(colors)
    
 
    
  })
    
  
 

  
  
  output$plot= renderWordcloud2( 
      
      
   
    
    ###
    
    
wordcloud2(datasetInput(),  color = rep_len(datasetInput2(), nrow(datasetInput()) ), backgroundColor = "white",
            #figPath =datasetInput3(), size = 1)
            size = 1)
            #wordSize=2, word="The New York Times is one of the oldest newspapers in the United States.")

)
      
      


    

  
  
  
  
  ##########################################################################  
  
  
  
  

  
}