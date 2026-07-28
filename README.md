# Análisis de Datos de Acciones con R

## Descripción

Este repositorio contiene ejemplos de análisis 
de datos financieros utilizando R.

## Objetivos

- Uso de la API de Yahoo Finances.
- Aprender análisis financiero.
- Aplicar técnicas estadísticas.
- Generar reportes reproducibles.
- Crear portafolios optimizados.

## Estructura

- `data/`
- `scripts/`
- `reports/`
- `figures/`

## API de Yahoo Finances

Para que la API se conecte a Rstudio es imporante
instalar una libreria

```{r}
install.packages("quantmod")
```

Después de instalar la libreria la tenemos que utilizar

```{r}
library(quantmod)
```
Posteriormente, para que los datos se guarden en un vector,
tenemos que realizar el proceso del siguiente ejemplo:

![Precio de Microsoft](scripts/01_API_yahoo.R)




## Autor

Julio César Magaña Cáceres