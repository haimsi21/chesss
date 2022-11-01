#install.packages("mongolite", dep=T)
#install.packages("markdown", dep=T)
#install.packages("openintro", dep=T)

library(shiny)
library(dplyr)
library(bslib)

#mng_con<-mongo(collection = 'vidPrac',db='video_practice')

pais_df <- read.csv("paises.csv")

# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Application title
  titlePanel("Chess Mining",
             title=div(img(src = 'mini.png'),"Chess Mining" , align="center", img(src = 'mini.png'))
  ),
  
  navbarPage(theme = "cyborgBootstrap.css",
             img(src = 'mini.png', height = '30px'),
             collapsible = TRUE,
             fluid = TRUE,
             tabPanel("Capítulo 0",
                      
                      mainPanel(
                      
                      h1("Las ideas principales a desarrollar son:", align="center"),
                      br(), br(),
                      h2("1. Construye un Blockchain entre todφs", align="center"),
                      hr(),
                      h2("2. Almacena información inmutable", align="center"),
                      hr(),
                      h2("3. Crea dinero con nuestros datos", align="center"),
                      hr(),
                      h2("4. Inteligencia Artificial para la Humanidad", align="center"),
                      hr(),
                      h2("5. Irracionales= φ, e y π, velocidad de la luz", align="center"),
                      hr(),
                      h2("6. Unidad tecnológica y social",  align="center"),
                      hr(), br()
             ),
             
             sidebarPanel(width = 4,
                          textOutput("greeting"),
                          h2(" Infornación Mínima: ", align="center"),
                          textInput("nam", "Nombre:", ""),
                          textInput("sur", "Apellido:", ""),
                          dateInput("date", "Fecha de nacimiento:",
                                    startview = "decade", value = "2012-12-21", format = "dd / M / yyyy"),
                          selectInput("pais", "País", choices = pais_df$nombre),
                          actionButton("calculate", "¡Vamos!", align="cent"),
                          br(), hr(),
                          helpText("* toda tu información es privada, valiosa y escriptada. ♫ Recuérdalo ♪"),
                          
             )
             ),
             
             
             
             
             tabPanel("♞ Minería ♞" ,
                      br(),
                      h1("Capítulo 2: Chess Mining."),
                      br(), br(),
                      h2("5 Reglas del Juego"), br(),
                      p("Para poder minar será necesario contar con algún dispositivo 
                        capaz de realizar la regla 1 y conectarse a una red celular o WiFi
                        en el día que el bloque sea minado"),br(),
                      p("Las 5 reglas son:"), br(),
                      p("1. Protocolo de consenso: 1+1..."), br(),
                      p("2. Elige tu color: negro, blanco o dorado"), br(),
                      p("3. Tamaño de bloque <= 1 Quijote (1mb)"), br(),
                      p("4. Tiempo: no más de 1000 bloques"), br(),
                      p("Creación de monedas"), br(),
                      
                      
                      
                      
             ),
             tabPanel("♝ Escribe en Bchain ♝"),
             tabPanel("♜ Libro Blanco ♜"),
             tabPanel("♛ NFT ♛"),
  ),
  

   


        
          
    )

 
    
    


# Define server logic required to draw a histogram
server <- function(input, output, session) {
 
  
 
   
  id<-432
  n<-1:id
  fi<-(1+sqrt(5))/2
  gf<-(fi*n)%%1
  ddf<-tibble(n,gf)
  path = "www/un_oro.png"

  output$greeting <- renderText({
    paste("Bienevido al futuro donde las máquinas siguen tus órdenes,",input$nam," ",input$sur)
  })
  
}

# Run the application 
shinyApp(ui = ui, server = server)

#devtools::install_github("r-dbi/DBI")

 
