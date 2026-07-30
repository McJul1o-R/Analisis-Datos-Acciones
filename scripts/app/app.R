library(shiny)
library(quantmod)

ui <- fluidPage(
  
  titlePanel("Análisis de Acciones"),
  
  sidebarLayout(
    
    sidebarPanel(
      
      textInput(
        inputId = "ticker",
        label = "Ticker",
        value = "AAPL"
      ),
      
      actionButton(
        inputId = "buscar",
        label = "Actualizar"
      )
    ),
    
    mainPanel(
      
      tableOutput("estadisticos")
      
    )
  )
)

server <- function(input, output, session){
  
  datos <- eventReactive(input$buscar, {
    
    getSymbols(
      Symbols = input$ticker,
      from = "2025-01-01", 
      to = "2026-07-27", 
      src = "yahoo",
      auto.assign = FALSE
    )
    
  })
  
  precio <- reactive({
    
    Ad(datos())
    
  })
  
  estadisticos <- reactive({
    
    x <- as.numeric(precio())
    
    data.frame(
      Estadístico = c("Media", "Varianza","Desviación Estándar", "Q1", "Mediana", "Q3"),
      Valor = round(c(
        mean(x),
        var(x),
        sd(x),
        quantile(x, 0.25, type = 2),
        median(x),
        quantile(x, 0.75, type = 2)), 2
      )
    )
  })
  
  output$estadisticos <- renderTable({
    
    estadisticos()
    
  })  
}

shinyApp(ui, server)