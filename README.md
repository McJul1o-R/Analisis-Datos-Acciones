# Análisis de Datos de Acciones

## Descripción

Este proyecto revisaremos algunas herramientas para el análisis 
de datos financieros de acciones.

## Objetivos

- Uso de la API de Yahoo Finances.
- Aprender análisis técnico.
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

```r
install.packages("quantmod")
```

Después de instalar la libreria la tenemos que utilizar

```r
library(quantmod)
```
Posteriormente, para que los datos se guarden en un vector,
tenemos que realizar el proceso del siguiente ejemplo:

[Precio de Microsoft](scripts/01_API_yahoo.R)

## Estadísticos descriptivos

Una vez que preparamos los datos, empezamos con 
algunos cálculos básicos como la media aritmética, 
varianza, desviación estándar y cuartiles. 

Dado que dichos cálculos son muy directos en R, 
lo complementaremos con un dashboard, incluyendo 
un gráfico de datos agrupados y un diagrama de caja.

Recordemos las fórmulas que usa R para realizar los 
cálculos.

La **media aritmética**, también conocido como promedio,
es la suma de los datos dividido entre el **total de datos** $n$.

La **varianza** es un complemento importante del promedio. Mide la variación de los datos
respecto al promedio, aunque no maneja la misma unidad de medida que los datos. Para esto, 
se utiliza la **desviación estándar**.

En R, si tenemos una base datos, que llamaremos **datos**, obtenemos 

la media con

```r
mean(datos)
```

la varianza,

```r
var(datos)
```

Y la desviación estándar como

```r
sd(datos)
```

Por otro lado, los cuartiles son medidas de posición que separan porcentajes 
de datos, por ejemplo:

 - El **primer cuartil** $Q_1$ es un valor tal que el 25% de los 
datos son menores a $Q_1$. El otro 75% de los datos son mayores a $Q_1$.
 - El **segundo cuartil** $Q_2$, también conocido como **mediana** divide a los datos por
un 50%. 
 - El **tercer cuartil** $Q_3$ es lo contrario al primer cuartil, esto es, el 75% 
de los datos son menores a $Q_3$ y el 25% de los datos son menores a $Q_3$.

Para realizar los cálculo, se utiliza la fórmula de percentiles.

```r
quantile(datos, probs = m/100, type = 2)
```

donde $m$ representa el porcentaje del percentil que queremos calcular.

Por ejemplo, si queremos dividir a los datos en 17% por debajo y 83% por arriba,
entonces estamos calculando $P_{17}$ con $m = 17$.

En particular, 

 - $Q_1 = P_{25}$
 - $Q_2 = P_{50}$
 - $Q_3 = P_{75}$

Un ejemplo donde podemos utilizar estas herramientas, 
es en las acciones. 

[Análisis de acciones](https://v658m0-julio-maga0a.shinyapps.io/analisisacciones/)

Otro ejemplo es el análisis de calificaciones en una salón de clases.

[Calificaciones de estudiantes]( https://v658m0-julio-maga0a.shinyapps.io/calificaciones/)

## Autor

Julio César Magaña Cáceres, Ph.D.