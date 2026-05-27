# Resumen de la Carpeta: 08_Metrics_Reliability

Esta sección presenta un análisis detallado de los documentos PDF contenidos en la carpeta `08_Metrics_Reliability`, enfocándose en los aspectos clave de cada publicación.

---

## A Practical Approach to Estimate the Min-Entropy in PUFs.pdf

## Resumen Detallado del Artículo: "A Practical Approach to Estimate the Min-Entropy in PUFs"

Este artículo aborda el problema crítico de estimar la min-entropía restante en Funciones Físicas Inclonables (PUFs) después de aplicar algoritmos de datos auxiliares (HDAs) para la corrección de errores. La min-entropía es una medida fundamental de la seguridad de las PUFs, ya que cuantifica la impredecibilidad del secreto generado, lo cual es esencial para aplicaciones como la generación de claves en dispositivos de bajo costo para el Internet de las Cosas (IoT).

**Problema Central y Motivación:**

Las PUFs del mundo real a menudo presentan imperfecciones, como sesgos y correlaciones en sus respuestas, que se desvían del modelo ideal de fuentes aleatorias independientes e idénticamente distribuidas (IID). Para compensar estas imperfecciones y garantizar la fiabilidad, se utilizan HDAs que, a su vez, generan datos auxiliares públicos. El problema radica en que estos datos auxiliares pueden filtrar información sobre el secreto de la PUF, reduciendo su min-entropía efectiva. Los enfoques existentes para estimar esta min-entropía tienen limitaciones significativas: algunos solo consideran sesgos homogéneos o correlaciones sin ambos, mientras que otros se restringen a sesgos locales sin correlación o a longitudes de código muy cortas, lo que los hace poco prácticos para escenarios reales. El estándar actual de PUFs no aborda explícitamente esta fuga de información a través de los datos auxiliares.

**Contribuciones Clave del Trabajo:**

Este trabajo presenta un nuevo enfoque para determinar la min-entropía de las PUFs que supera las limitaciones de los métodos anteriores, haciéndolo más práctico y preciso. Las contribuciones principales son:

1.  **Introducción de la Función de Masa de Respuesta (RMF):** Se define la RMF como una base para calcular la min-entropía de secretos derivados de PUFs después de la corrección de errores. Esta función permite modelar la distribución de probabilidad de las respuestas de la PUF de una manera más general.
2.  **Aproximación de la Min-Entropía basada en Convolución de Histogramas:** Se introduce el concepto de convolución de histogramas en el dominio de las PUFs. Este es el primer enfoque factible para aproximar la min-entropía en secretos derivados de PUFs en una amplia gama de escenarios prácticamente relevantes, incluyendo sesgos arbitrarios y efectos de correlación más realistas, y para tamaños de código de longitud práctica. Esto proporciona un límite superior más ajustado y una mejor aproximación en comparación con los métodos previos.
3.  **Evaluación con Datos Reales y Sintéticos:** Se demuestra la relevancia práctica del método utilizando datos de SRAMs reales y datos sintéticos correlacionados. Esto valida la aplicabilidad del enfoque a diferentes tipos de PUFs.
4.  **Análisis del Impacto de los Parámetros ECC:** El trabajo demuestra cómo los parámetros de los códigos correctores de errores (ECCs) influyen en la fuga de datos auxiliares y, por ende, en la min-entropía. Se concluye que los códigos cortos con una alta tasa son preferibles en términos de fuga de datos auxiliares.
5.  **Demostración de Fuga de Información Significativa:** Se muestra que la fuga de información es significativa para datos sintéticos correlacionados, como los que surgen de una comparación superpuesta de frecuencias de osciladores de anillo (RO).
6.  **Disponibilidad del Código Fuente:** El código fuente para calcular el límite propuesto se hace público, facilitando su adopción y replicación.

**Metodología Principal:**

El enfoque se basa en la definición de la min-entropía condicional esperada, $\bar{H}_{\infty}(X|Y)$, que mide la probabilidad de que un atacante adivine la clave correcta dada la información de los datos auxiliares. El trabajo se construye sobre trabajos previos de Delvaux et al. [4], que simplificaron el cálculo bajo dos suposiciones:
    *   La entrada al codificador ECC es uniformemente distribuida.
    *   El espacio de respuestas de la PUF puede particionarse en subconjuntos con igual probabilidad de ocurrencia.

Sin embargo, el presente trabajo va más allá de estas suposiciones al introducir la **Función de Masa de Respuesta (RMF)**. La RMF describe la distribución de probabilidad de las respuestas de la PUF, permitiendo modelar escenarios con sesgos y correlaciones complejas.

La clave del nuevo enfoque reside en la **convolución de histogramas**. Este método permite calcular la probabilidad máxima de una respuesta de PUF que puede ser alcanzada por cualquier palabra de código válida, considerando la RMF. Al convolucionar los histogramas de las probabilidades de las respuestas de la PUF con las probabilidades de las palabras de código, se puede obtener una estimación más precisa de la distribución de probabilidad de las respuestas después de la corrección de errores, y por lo tanto, una mejor estimación de la min-entropía.

El trabajo se enfoca en HDAs que emplean códigos correctores de errores lineales (esquema de compromiso difuso, extractor difuso de desplazamiento de código y construcción de síndrome), mostrando que para estos la min-entropía condicional es equivalente. Se consideran ECCs comunes en el dominio de las PUFs, como códigos de repetición, BCH y códigos polares, así como concatenaciones de estos.

**Resultados y Conclusiones Importantes:**

*   El nuevo método de convolución de histogramas proporciona un límite más ajustado y una mejor aproximación de la min-entropía en comparación con los enfoques anteriores.
*   Se demuestra que la elección del ECC tiene un impacto significativo en la fuga de datos auxiliares y la min-entropía resultante. Los códigos cortos con una alta tasa son preferibles para minimizar esta fuga.
*   El análisis en datos reales de SRAMs y datos sintéticos correlacionados valida la aplicabilidad práctica del enfoque, mostrando que puede manejar las complejidades de las PUFs del mundo real.
*   Se resalta la importancia de considerar la fuga de datos auxiliares al diseñar sistemas basados en PUFs, ya que puede llevar a una sobreestimación de la seguridad si no se cuantifica correctamente la min-entropía.

**Impacto y Relevancia:**

Este trabajo es crucial para el diseño seguro de sistemas basados en PUFs, especialmente en el contexto de IoT, donde la seguridad es primordial y los recursos son limitados. Al proporcionar una herramienta más precisa y práctica para estimar la min-entropía, permite a los diseñadores evaluar mejor la seguridad de sus implementaciones de PUFs, seleccionar ECCs apropiados y comprender el impacto del post-procesamiento en la entropía efectiva de las claves generadas. Esto contribuye a construir sistemas más robustos y resistentes a ataques que explotan las imperfecciones de las PUFs y la fuga de información a través de los datos auxiliares.

---

## A Systematic Method to Evaluate and Compare the Performance of Physical Unclonable Functions.pdf

Aquí tienes un resumen detallado y exhaustivo del documento "A Systematic Method to Evaluate and Compare the Performance of Physical Unclonable Functions.pdf", sin necesidad de abrir el PDF original.

---

**Título del Documento:** A Systematic Method to Evaluate and Compare the Performance of Physical Unclonable Functions

**Autores:** Abhranil Maiti, Vikash Gunreddy, and Patrick Schaumont (Virginia Tech)

**Resumen Detallado:**

Este documento propone un método sistemático e independiente de la tecnología subyacente para evaluar y comparar el rendimiento de las Funciones Físicas Inclonables (PUFs). La necesidad de este método surge de la proliferación de diferentes tipos de PUFs y la ausencia de una metodología común y justa para su comparación. El objetivo principal es proporcionar una herramienta robusta para que los diseñadores puedan seleccionar la PUF más adecuada para una aplicación específica.

**1. Problema y Justificación:**
Las PUFs son mecanismos de desafío-respuesta únicos para cada chip que explotan las variaciones del proceso de fabricación en los circuitos integrados (ICs). Tienen múltiples aplicaciones en seguridad de hardware, como autenticación de dispositivos, generación de claves secretas, protección de propiedad intelectual y prevención de falsificaciones. Desde su concepción, se han propuesto numerosos tipos de PUFs (Arbiter PUF, SRAM PUF, Ring Oscillator PUF, etc.), cada uno con características y principios de funcionamiento distintos. Esta diversidad, si bien ofrece opciones, también plantea el desafío de cómo evaluar objetivamente su eficiencia y cómo compararlas de manera justa. Actualmente, no existe un método estandarizado para esta comparación, lo que dificulta la adopción y el uso generalizado de la tecnología PUF.

**2. Objetivos del Trabajo:**
Los autores establecen dos objetivos principales:
*   **Definir parámetros claros y concretos:** Proponer un conjunto de parámetros que cuantifiquen el rendimiento de una PUF. Esto implica analizar parámetros existentes propuestos por otros investigadores, identificar redundancias y proponer un conjunto compacto y efectivo.
*   **Independencia de la tecnología subyacente:** Desarrollar un método de comparación que no dependa del circuito PUF específico (por ejemplo, comparar una PUF basada en retardo con una basada en memoria). Esto se logra centrándose en las propiedades estadísticas de las respuestas binarias de la PUF, ya que todas las PUFs producen o pueden convertir sus respuestas a formato binario.

**3. Contribuciones Principales:**
El documento presenta las siguientes contribuciones clave:

*   **Tres Dimensiones Genéricas de Medición de PUF:** Se proponen tres dimensiones fundamentales para la medición del rendimiento de una PUF:
    *   **Dispositivo (Device):** Relacionada con la variabilidad entre diferentes chips (inter-chip variability), crucial para la unicidad.
    *   **Tiempo (Time):** Relacionada con la estabilidad de las respuestas de una PUF en el tiempo (intra-chip variability over time), fundamental para la fiabilidad.
    *   **Espacio (Space):** Relacionada con la variabilidad dentro de un mismo chip (intra-chip variability across space), importante para la aleatoriedad y la distribución de las respuestas.
    Estas dimensiones no habían sido formalmente definidas antes y proporcionan una base estructurada para la evaluación.

*   **Conjunto Compacto de Parámetros de Rendimiento:** Se propone un conjunto de **siete parámetros** para evaluar y comparar PUFs, independientemente del número de bits de desafío y respuesta. Estos parámetros se basan puramente en las propiedades estadísticas de las respuestas binarias de la PUF. Algunos son propuestos por los autores y otros seleccionados de la literatura. Los parámetros son:
    1.  **Unicidad (Uniqueness):** Mide cuán diferentes son las respuestas de diferentes PUFs (chips) al mismo desafío. Se relaciona con la dimensión "Dispositivo".
    2.  **Fiabilidad (Reliability):** Mide la consistencia de las respuestas de una PUF específica a un desafío dado a lo largo del tiempo y bajo diferentes condiciones ambientales. Se relaciona con la dimensión "Tiempo".
    3.  **Aleatoriedad (Randomness):** Mide la distribución uniforme de los bits de respuesta (por ejemplo, que haya un número similar de 0s y 1s) y la ausencia de patrones predecibles. Se relaciona con la dimensión "Espacio".
    4.  **Estabilidad (Steadiness):** Similar a la fiabilidad, pero podría enfocarse más en la variabilidad a corto plazo o bajo fluctuaciones menores. (El documento no detalla explícitamente su distinción de fiabilidad, pero suele referirse a la consistencia bajo condiciones operativas).
    5.  **Alias de Bit (Bit-aliasing):** Mide la tendencia de ciertos bits de respuesta a ser siempre 0 o siempre 1, reduciendo la entropía. Se relaciona con la dimensión "Espacio".
    6.  **Difusión (Diffuseness):** Mide cuánto cambia la respuesta cuando el desafío cambia ligeramente, indicando la sensibilidad del PUF al desafío. Se relaciona con la dimensión "Espacio".
    7.  **Probabilidad de Malidentificación (Probability of Misidentification):** Mide la probabilidad de que una PUF sea incorrectamente identificada como otra, o de que una respuesta genuina sea rechazada. (Este es un parámetro de seguridad más global).

*   **Metodología de Comparación:** Se ilustra un enfoque donde diferentes PUFs (con distintos tamaños de desafío y respuesta) pueden ser evaluadas usando este conjunto común de `m` parámetros, generando un perfil de rendimiento comparable.

*   **Análisis Comparativo Detallado:** Para validar el método propuesto, se realiza un análisis comparativo detallado entre **dos tipos de PUFs** ampliamente estudiadas:
    *   **Ring Oscillator PUF (RO PUF):** Basada en las diferencias de frecuencia entre osciladores de anillo idénticamente diseñados.
    *   **Arbiter PUF (APUF):** Basada en las diferencias de retardo entre rutas de señal gemelas.
    La comparación se realiza utilizando datos PUF medidos, aplicando los parámetros definidos para evaluar su rendimiento relativo.

**4. Metodología Principal y Análisis de Parámetros:**

El documento revisa la cronología de las PUFs, destacando la evolución desde el año 2000 y la variedad de diseños propuestos (Tabla 1). También discute trabajos relacionados sobre evaluación de rendimiento de PUFs:
*   Majzoobi et al. propusieron parámetros para la seguridad (predictibilidad, sensibilidad, ingeniería inversa), pero sin comparación entre PUFs.
*   Armknecht et al. formalizaron propiedades como robustez, inclonabilidad e impredecibilidad, pero se centraron en SRAM PUF.
*   Van der Leest et al. evaluaron D flip-flop PUF usando pruebas de Hamming weight y NIST randomness, y

---

## Efficient Bound for Conditional Min-Entropy of Physical Unclonable Functions Beyond IID.pdf

El documento "Efficient Bound for Conditional Min-Entropy of Physical Unclonable Functions Beyond IID" aborda un problema crítico en la seguridad de las Funciones Físicamente Inclonables (PUFs): la estimación precisa de la min-entropía condicional de las respuestas de PUF, especialmente cuando la suposición de respuestas independientes e idénticamente distribuidas (IID) no se cumple. Los autores, Florian Wilde, Christoph Frisch y Michael Pehl, de la Universidad Técnica de Múnich, proponen nuevas metodologías para abordar esta limitación, que es común en PUFs del mundo real.

**1. Problema y Contexto**

Las PUFs son una alternativa de bajo costo para el almacenamiento seguro de claves en dispositivos de baja potencia, aprovechando las variaciones inherentes al proceso de fabricación para generar identidades únicas. Para derivar una clave estable de una PUF ruidosa, se utilizan extractores difusos (fuzzy extractors) y códigos de corrección de errores (ECC). La seguridad de la clave generada depende de su entropía, específicamente de la min-entropía condicional (H∞(X|Y)), que mide la impredecibilidad de la respuesta de la PUF (X) dado el conocimiento de los datos auxiliares (Y) por parte de un atacante.

Tradicionalmente, la estimación de esta entropía se ha basado en la suposición de que las respuestas de la PUF son IID. Sin embargo, en la práctica, muchas implementaciones de PUFs no producen respuestas sin sesgos y, lo que es más importante, no se ajustan a la suposición IID. Esto significa que la probabilidad de que un bit sea '1' (conocido como Bit-Alias) varía significativamente entre diferentes posiciones en el chip, lo que invalida las estimaciones de entropía IID. Un ejemplo visualizado en el documento muestra cómo las frecuencias relativas de '1' varían considerablemente en un PUF de oscilador de anillo (RO PUF), lo que indica un sesgo dependiente de la posición. Este sesgo puede ser explotado por un atacante para reducir el esfuerzo de adivinación de la clave.

**2. Metodología y Contribuciones Principales**

El trabajo aborda la limitación de la suposición IID al considerar el caso más realista de respuestas **independientes pero no necesariamente idénticamente distribuidas (IND)**. Las principales contribuciones del documento son:

*   **Análisis Crítico de Métodos Existentes:**
    *   **Estimación de entropía sin datos auxiliares:** Los autores contrastan la estimación de min-entropía bajo la suposición IID (ecuación 1) con el caso IND (ecuación 2). Muestran que la suposición IID sobreestima severamente la entropía real al promediar los sesgos, mientras que el enfoque IND considera la probabilidad individual de cada bit, lo que resulta en una estimación más baja y realista.
    *   **(n-k) Bound:** Esta cota, una estimación simple y pesimista para la entropía condicional, es solo aplicable al caso IID y puede arrojar valores negativos, lo que la hace poco útil en escenarios no IID.
    *   **Min-Entropía Condicional Promedio (Delvaux et al.):** El documento discute el trabajo de Delvaux et al. (ecuaciones 4 y 5), que proporciona una expresión matemática directa para la entropía condicional. Aunque más precisa, su evaluación directa es computacionalmente inviable para códigos grandes. Delvaux et al. propusieron un algoritmo para reducir el esfuerzo computacional agrupando respuestas de PUF con la misma probabilidad decreciente bajo la suposición IID.

*   **Propuestas de Mejoras para el Caso IND:**

    *   **Extensión del (n-k) Bound para IND:** Los autores extienden esta cota para el caso IND, reconociendo que la pérdida de entropía no es simplemente n-k, sino que depende de las probabilidades individuales de los bits. La nueva cota (ecuación 9) reemplaza la entropía total 'm' por la entropía IND 'm̃'.

    *   **Extensión de la Cota de Delvaux et al. para IND:** Reconociendo que el agrupamiento IID de Delvaux et al. no es aplicable a IND, donde cada bit tiene su propia probabilidad, los autores modifican la forma en que se calcula la probabilidad de una respuesta de PUF ⃗x. La probabilidad P(X = ⃗x) se calcula como el producto de las probabilidades individuales de cada bit (ecuación 10), lo que permite aplicar el marco de Delvaux et al. al caso IND. Sin embargo, esto aumenta la complejidad computacional ya que ya no es posible agrupar respuestas de PUF en J = nb + 1 grupos simples.

    *   **Agrupamiento de Respuestas de PUF por Distancia de Hamming:** Para manejar la complejidad del caso IND, se propone un nuevo método de agrupamiento. En lugar de agrupar por probabilidad, que ahora es única para cada ⃗x, se agrupan por la **distancia de Hamming con respecto a un vector de referencia ⃗p_round**. Este vector se obtiene redondeando las probabilidades pi individuales a 0 o 1 (ecuación 12). Las respuestas de PUF se agrupan en base a su distancia de Hamming a ⃗p_round, lo que permite un número manejable de grupos. Este método ofrece una compensación entre precisión y eficiencia computacional.

    *   **La "Grouping Bound" (Cota de Agrupamiento):** Esta es la contribución principal. Reconociendo que incluso el agrupamiento por distancia de Hamming puede ser demasiado complejo, los autores proponen agrupar respuestas de PUF en función de su **probabilidad calculada P(X = ⃗x)**. Todas las respuestas con probabilidades dentro de un cierto rango o que son idénticas se agrupan. Para hacer esto eficiente, se calculan las probabilidades de todas las 2^nb posibles respuestas del bloque y se ordenan. Luego, se agrupan las probabilidades idénticas o muy cercanas. Este enfoque, aunque aún computacionalmente exigente para bloques muy grandes, es más factible que considerar cada ⃗x individualmente y ofrece una mejor aproximación que el agrupamiento por distancia de Hamming. La clave es que el max operator de la ecuación (5) se aplica sobre estas probabilidades agrupadas.

*   **Validación con Key Rank:** Para validar la precisión de las estimaciones de entropía, se adapta el concepto de "key rank" (rango de clave), una herramienta de análisis de canal lateral, al contexto de PUFs. El key rank mide el esfuerzo real para adivinar una clave. Comparar las cotas de entropía con el key rank obtenido de datos de PUF reales permite evaluar cuán bien las cotas predijeron la seguridad real.

**3

---

## On the Confidence in Bit-Alias Measurement of Physical Unclonable Functions.pdf

El documento "On the Confidence in Bit-Alias Measurement of Physical Unclonable Functions" aborda la evaluación de la impredecibilidad de las Funciones Físicamente Inclonables (PUF), un aspecto crucial para su seguridad. Los autores, Florian Wilde y Michael Pehl de la Universidad Técnica de Múnich, destacan que la métrica estándar, el Bit-Alias, a menudo se utiliza sin considerar su intervalo de confianza, lo que puede llevar a una sobreestimación de la seguridad de una PUF. Para solucionar esto, proponen una metodología que incorpora intervalos de confianza en la medición del Bit-Alias y desarrollan una prueba de hipótesis estadística para verificar si un diseño de PUF cumple con las especificaciones de Bit-Alias o entropía bit a bit.

**Puntos Clave:**

1.  **Limitaciones del Bit-Alias Tradicional:** El Bit-Alias (probabilidad de observar un '1' en una posición específica de la respuesta de la PUF) es una métrica común para evaluar la impredecibilidad. Sin embargo, su uso sin considerar los intervalos de confianza puede ser engañoso, ya que la estimación puede ser imprecisa con un número limitado de muestras.
2.  **Importancia de los Intervalos de Confianza (CI):** La inclusión de CI proporciona una medida de la precisión de la estimación del Bit-Alias. Esto permite comprender el rango dentro del cual el verdadero Bit-Alias probablemente se encuentra, evitando así conclusiones erróneas sobre la impredecibilidad de una PUF.
3.  **Propuesta de Métodos para Calcular CI:** El trabajo adapta métodos conocidos para calcular CI para proporciones binomiales (ya que el Bit-Alias puede verse como la estimación de la probabilidad de un evento Bernoulli). Se discuten tres métodos:
    *   **Aproximación Normal:** Útil para una estimación inicial, pero poco precisa para N pequeños o p cercanos a 0 o 1.
    *   **Intervalo de Puntuación de Wilson:** Recomendado por su mejor rendimiento general en términos de cobertura.
    *   **Intervalo Exacto de Clopper-Pearson:** Proporciona CI ligeramente más amplios, garantizando una cobertura mínima de 1-α incluso en el peor de los casos.
4.  **Prueba de Hipótesis para Bit-Alias Aceptable:** Se propone una prueba de hipótesis estadística para verificar si el Bit-Alias de una PUF se encuentra dentro de un rango permisible alrededor de 0.5 (idealmente, una PUF impredecible debería tener un Bit-Alias de 0.5). Esta prueba se basa en el intervalo de Clopper-Pearson y considera tanto la tasa de falsa aceptación (FAR) como la tasa de falso rechazo (FRR).
5.  **Estimación del Número de Dispositivos Necesarios:** El documento enfatiza que un alto número de dispositivos (muestras) es crucial para obtener estimaciones fiables del Bit-Alias y sus CI. Por ejemplo, para un CI de 0.5 ± 0.05 con α = 0.01, se requieren aproximadamente 660-680 dispositivos. Para una prueba de hipótesis más rigurosa con límites de aceptación más estrechos y una FRR controlada, el número de dispositivos puede aumentar significativamente (ej., 6674 dispositivos para ciertas condiciones).
6.  **Optimización del Proceso de Prueba:** Se discute la posibilidad de terminación temprana de los experimentos si se detecta que una PUF no cumple los requisitos desde las primeras etapas, lo que permite ahorrar recursos.
7.  **Disponibilidad Pública de las Herramientas:** Las metodologías propuestas están disponibles públicamente, lo que facilita su adopción por la comunidad de investigación y desarrollo de PUF.

**Metodología Principal:**

La metodología se centra en tratar la medición del Bit-Alias como la estimación de una proporción binomial.

1.  **Definición del Bit-Alias:** Se define como la media aritmética de las respuestas binarias (0 o 1) de una posición específica en la respuesta de la PUF a través de múltiples dispositivos.
2.  **Aplicación de Intervalos de Confianza:** Se adaptan y comparan tres métodos para calcular los CI alrededor del Bit-Alias estimado:
    *   Aproximación Normal: Formula `p_hat ± z * sqrt(p_hat*(1-p_hat)/N)`
    *   Intervalo de Wilson: Una fórmula más compleja que mejora la precisión para N pequeños y p extremos.
    *   Intervalo de Clopper-Pearson: Un método "exacto" basado en la inversión de pruebas de hipótesis, que garantiza la cobertura pero puede ser conservador (más amplio).
3.  **Prueba de Hipótesis:** Se construye una prueba de hipótesis para determinar si el verdadero Bit-Alias (p) se encuentra dentro de un rango deseado `(p_l, p_u)`.
    *   Se formulan dos hipótesis nulas: `H0_u: p ≥ p_u` y `H0_l: p ≤ p_l`.
    *   El objetivo es rechazar ambas hipótesis nulas para aceptar que `p_l < p < p_u`.
    *   Se utilizan las distribuciones binomiales para calcular los valores p y determinar los umbrales de aceptación/rechazo (`x_u`, `x_l`).
    *   Se considera la FAR (probabilidad de aprobar una PUF no conforme) y la FRR (probabilidad de rechazar una PUF conforme) al definir el número de muestras (N).
4.  **Análisis de Sensibilidad:** Se analiza cómo el ancho del CI y el número de muestras (`N`) afectan la precisión de la estimación, mostrando que `N` debe ser considerablemente grande, especialmente cuando `p_hat` está cerca de 0.5 (el peor de los casos para el ancho del CI).

**Resultados Más Importantes:**

*   **Necesidad de un alto número de muestras:** La aplicación de los métodos a diseños de PUF publicados demuestra que se requiere un número significativamente mayor de dispositivos de lo que se suele utilizar para probar la impredecibilidad de las PUF de manera confiable. Por ejemplo, para garantizar un Bit-Alias de 0.5 ± 0.05 con un nivel de confianza del 99% (α=0.01), se necesitan al menos 660-680 dispositivos. Para una prueba de hipótesis con una FRR controlada, este número puede superar los 6000.
*   **Impacto de la falta de CI:** La omisión de los intervalos de confianza en la evaluación del Bit-Alias puede llevar a una falsa sensación de seguridad, ya que una estimación puntual de 0.5 podría tener un CI muy amplio si N es pequeño, indicando una gran incertidumbre.
*   **Mejora en la evaluación de PUF:** Las herramientas propuestas permiten una evaluación más rigurosa

---

