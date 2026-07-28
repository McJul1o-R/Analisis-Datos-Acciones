library(quantmod)
MSFT = getSymbols("MSFT", 
                  from = "2024-01-01", 
                  to = "2026-07-27", 
                  src = "yahoo", 
                  auto.assign = F)[,6]
MSFT = as.vector(MSFT$MSFT.Adjusted)
