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
es la suma de los datos dividido entre el **total de datos** $n$,
esto es,

$$
\overline{x} = \frac{\sum x_i}{n} = \frac{x_1 + x_2 + \ldots + x_n}{n}
$$

La **varianza** es un complemento poderoso del promedio. Mide la variación de los datos
respecto al promedio, aunque no maneja la misma unidad de medida que los datos. Para esto, 
se utiliza la **desviación estándar**. Las fórmulas son

$$
  \text{varianza} = s^2 = \frac{\sum (x_i - \overline{x})^2}{n-1}
$$

$$
  \text{Desviación estándar} = s = \sqrt{\text{varianza}}
$$

Por último, los cuartiles son medidas de posición que separan porcentajes 
de datos, por ejemplo:

 - El **primer cuartil** $Q_1$ es un valor tal que el 25% de los 
datos son menores a $Q_1$. El otro 75% de los datos son mayores a $Q_1$.
 - El **segundo cuartil** $Q_2$, también conocido como **mediana** divide a los datos por
un 50%. 
 - El **tercer cuartil** $Q_3$ es lo contrario al primer cuartil, esto es, el 75% 
de los datos son menores a $Q_3$ y el 25% de los datos son menores a $Q_3$.

Para realizar los cálculo, se utiliza la fórmula de percentiles.

Para $m$ un porcentaje $0 \leq m \leq 100$, la posición se calcula como

$$
 i = \frac{m \cdot n}{100},
$$

donde $n$ sigue representando el tamaño de nuestra muestra o el total de datos que 
analizamos.

El percentil $m$, denotado por $P_m$, se caclula como sigue:

$$
P_m = \left\{ 
      \begin{array}{rl}
      x_{\lceil i \rceil} & \text{Cuando $i$ NO es entero}, \\
      & \\
      \frac{x_i + x_{i+1}}{2} & \text{Cuando $i$ es entero,} 
      \end{array}
      \right.
$$

Recordemos que $\lceil \cdot \rceil$ es la función techo, esto es, cuando
$i$ NO es entero, se redondea hacia arriba y esa es la posición utilizada.

En particular, 

 - $Q_1 = P_{25}$
 - $Q_2 = P_{50}$
 - $Q_3 = P_{75}$



## Autor

Julio César Magaña Cáceres