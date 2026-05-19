# Resumen de la Carpeta: 01_PLPUF_Core

Esta sección presenta un análisis detallado de los documentos PDF contenidos en la carpeta `01_PLPUF_Core`, enfocándose en los aspectos clave de cada publicación.

---

## Design of Pseudo-LFSR Based Physical Unclonable Function.pdf

## Resumen Detallado del Artículo "Design of Pseudo-LFSR Based Physical Unclonable Function"

Este artículo, publicado en The Journal of Engineering Research en 2024, presenta el **diseño e implementación de una Función Física Inclonable (PUF) basada en un Registro de Desplazamiento de Retroalimentación Pseudo-Lineal (Pseudo-LFSR)**. El objetivo principal es desarrollar una PUF eficiente en términos de área que genere un número significativamente mayor de pares de desafío-respuesta (CRPs) en comparación con los diseños convencionales basados en Pseudo-LFSR, mejorando así la seguridad del hardware. La implementación se realizó en una placa de desarrollo Basys-3 con un dispositivo Artix-7 FPGA.

**1. Contexto y Motivación:**

El documento comienza destacando la creciente necesidad de seguridad en los sistemas embebidos, especialmente en dispositivos FPGA, donde los métodos tradicionales de almacenamiento de claves en memorias no volátiles (EEPROM, Flash, SRAM respaldada por batería) son vulnerables a ataques físicos. La integración de módulos de seguridad adicionales puede aumentar la sobrecarga de hardware, lo que lleva a la búsqueda de soluciones de seguridad de hardware ligeras. Las PUFs emergen como una alternativa prometedora al aprovechar las variaciones de proceso intrínsecas e incontrolables que ocurren durante la fabricación de circuitos integrados. Estas variaciones crean una "huella digital" única para cada dispositivo, que puede utilizarse para autenticación y generación de claves sin almacenar información sensible de forma estática.

**2. Concepto de PUF:**

Una PUF se define como un circuito físico incrustado en dispositivos de hardware que extrae secretos de las características físicas de un circuito integrado. Actúa como una "huella digital digital" única para dispositivos semiconductores. La interacción con una PUF se realiza a través de un mecanismo de "Desafío-Respuesta" (Challenge-Response), donde un desafío (input) produce una respuesta (output). El conjunto de estos pares se denomina espacio CRP. La imprevisibilidad y la imposibilidad de clonar estas respuestas son las propiedades clave de las PUFs.

El documento clasifica las PUFs en dos tipos principales según el número de CRPs que pueden generar:

*   **PUF Fuerte (Strong PUF):** Genera un conjunto muy grande de CRPs, lo que dificulta que un atacante capture todos los pares. Son ideales para la autenticación, ya que cada CRP puede usarse solo una vez, protegiendo contra ataques de grabación.
*   **PUF Débil (Weak PUF):** Ofrece un número comparativamente menor de CRPs, a menudo solo un desafío por instancia de PUF. Se utilizan principalmente para autenticación y almacenamiento de claves.

**3. Desventajas de PUFs Existentes y la Propuesta Pseudo-LFSR PUF (PL-PUF):**

El artículo señala las limitaciones de otros tipos de PUFs:

*   **PUFs basadas en retardo:** Producen una respuesta de uno o pocos bits a la vez, lo que resulta en un bajo rendimiento.
*   **PUFs basadas en memoria:** Generan varios bits de salida simultáneamente, pero los valores de salida son fijos.
*   **PUFs basadas en memoria direccionable:** Producen IDs variables, pero el tamaño del circuito se vuelve muy grande.

Para superar estas desventajas, los autores proponen un diseño de Pseudo-LFSR PUF (PL-PUF). A diferencia de las PUFs tradicionales basadas en LFSR, esta propuesta **no contiene registros de desplazamiento explícitos**, sino que utiliza **circuitos lógicos combinacionales como inversores y puertas XOR**. Esta modificación busca introducir no linealidad en la estructura para aumentar la robustez de la PUF.

**4. Metodología y Diseño Propuesto:**

El diseño se basa en la estructura de un LFSR, pero en lugar de los registros de desplazamiento estándar, emplea una red de puertas combinacionales (inversores y puertas XOR) que imitan el comportamiento de un LFSR. La "fuerza" de la PUF se atribuye a la cantidad de CRPs que puede generar; un conjunto más grande implica una mayor seguridad.

Las características clave del diseño propuesto son:

*   **Eficiencia de Área:** El diseño se enfoca en ser eficiente en términos de área, un aspecto crítico para la implementación en FPGAs con recursos limitados.
*   **Generación de Respuestas de Gran Ancho de Bit:** Capaz de producir una respuesta de 'n' bits a partir de un único desafío de 'n' bits.
*   **Variabilidad de Mapeo Desafío-Respuesta:** Permite variar el mapeo entre desafíos y respuestas sin necesidad de alterar la estructura de hardware subyacente.
*   **Aumento de CRPs:** El diseño modificado está específicamente concebido para incrementar el número de CRPs generados dentro de un área determinada del tejido de la FPGA.

Aunque el resumen no proporciona detalles explícitos sobre la arquitectura interna del Pseudo-LFSR propuesto (como el polinomio de retroalimentación primitiva o diagramas de bloques detallados), sí menciona que la estructura de un Pseudo-LFSR PUF de 128 bits se ilustra en la Figura 1 del documento original y se deriva un polinomio de retroalimentación primitiva. Esto implica un diseño específico de las interconexiones de puertas XOR e inversores para generar la secuencia pseudoaleatoria.

**5. Resultados y Conclusiones (Implícitas en el Resumen):**

Aunque el resumen textual no presenta resultados cuantitativos específicos (como el número exacto de CRPs generados, consumo de área o métricas de rendimiento), las afirmaciones clave son:

*   El diseño propuesto **produce una respuesta de gran ancho de bit dentro de un área estipulada**.
*   Logra **aumentar el número de pares desafío-respuesta** en comparación con los diseños convencionales de Pseudo-LFSR dentro de una misma área en la FPGA.
*   La capacidad de **variar el mapeo de CRPs sin cambiar el hardware** es una ventaja importante, ya que ofrece flexibilidad y puede contribuir a la robustez contra ciertos ataques.

En resumen, el artículo propone una innovadora PUF basada en Pseudo-LFSR que se desvía de los diseños tradicionales al reemplazar los registros de desplazamiento con lógica combinacional. El objetivo es lograr una PUF eficiente en términos de área, capaz de generar una gran cantidad de CRPs y respuestas de múltiples bits, lo que la hace adecuada para aplicaciones de autenticación de hardware en FPGAs, donde la seguridad y la eficiencia de los recursos son primordiales. La capacidad de modificar el mapeo de desafío-respuesta sin alterar el hardware es un punto fuerte adicional del diseño.

---

## Late Breaking Results The Hidden Risks of Activation Duration in PLPUFs.pdf

## Resumen Detallado del Artículo "Late Breaking Results: The Hidden Risks of Activation Duration in PLPUFs"

Este documento, titulado "Late Breaking Results: The Hidden Risks of Activation Duration in PLPUFs", aborda un riesgo de seguridad crítico en las implementaciones de PUFs Pseudo Linear Feedback Shift Register (PLPUFs), específicamente la influencia de la duración de activación en su predictibilidad. Los autores, Mohamed Alsharkawy, Jan Zwerschke, Hassan Nassar, Jeferson González-Gómez y Jörg Henkel, del Karlsruhe Institute of Technology (KIT) y el Instituto Tecnológico de Costa Rica (TEC), demuestran que una selección inadecuada de la duración de activación puede comprometer significativamente la seguridad de las PLPUFs.

### 1. Contexto y Problema Principal

El rápido crecimiento del Internet de las Cosas (IoT) ha hecho que la seguridad de los dispositivos conectados sea una preocupación crítica, especialmente la autenticación en dispositivos con recursos limitados. Las Physical Unclonable Functions (PUFs) han surgido como una solución prometedora y ligera, aprovechando las propiedades físicas únicas de los circuitos integrados (ICs) para generar respuestas únicas a desafíos específicos.

Las PLPUFs son una implementación de PUF popular y ligera, que se distinguen por su flexibilidad para alterar el espacio de desafío-respuesta mediante la modificación de la "duración de activación" (el número de ciclos de reloj durante los cuales el pin de habilitación está activo). Esta flexibilidad permite reconfigurar dinámicamente el espacio desafío-respuesta sin modificaciones de hardware. Sin embargo, el trabajo presentado revela que esta flexibilidad encierra un riesgo oculto: la duración de activación puede comprometer la seguridad de la PLPUF.

El problema central que aborda este estudio es la falta de comprensión sobre cómo la duración de activación afecta la predictibilidad y, por ende, la seguridad de las PLPUFs. Una PUF segura debe generar respuestas aleatorias e impredecibles; si las respuestas pueden predecirse, la autenticación basada en PUFs puede ser vulnerada.

### 2. Metodología Principal

Los autores investigan la existencia de una **dependencia lineal** entre las respuestas de diferentes PLPUFs cuando se les presenta el mismo desafío.

1.  **Definición de Dependencia Lineal:** Se modela una relación lineal afín entre las respuestas de dos PLPUFs, A y B, para el mismo desafío. Si $a_n$ y $b_n$ son vectores de 128 bits que representan las respuestas de PLPUF A y PLPUF B para el n-ésimo desafío, la relación se expresa como:
    $B_n + v = A_n M^T$
    donde $M$ es una matriz de transformación de $128 \times 128$ y $v$ es un vector de traslación de 128 bits.

2.  **Descomposición del Sistema:** Este sistema se descompone en 128 sistemas de ecuaciones lineales independientes, uno para cada bit de la respuesta, que pueden resolverse de forma independiente.

3.  **Resolución del Sistema (Búsqueda Restringida):** Resolver directamente el sistema con todas las posibles combinaciones de $M$ y $v$ es computacionalmente inviable ($2^{128}$ iteraciones). Para hacer la computación factible, se restringe el espacio de búsqueda a vectores $M_{i,*}$ y $v_i$ que contienen **como máximo $k$ entradas no nulas**. Esta restricción significa que solo se consideran soluciones que implican relaciones entre un número limitado de bits.

4.  **Configuración Experimental:**
    *   Se implementaron 32 instancias de PLPUFs (basadas en [6]) en ocho FPGAs ARTY A7.
    *   Se recopilaron 8192 pares desafío-respuesta de cada PLPUF.
    *   Se generaron 992 pares posibles de PLPUFs para el análisis.
    *   Se utilizó un algoritmo de fuerza bruta, implementado en Rust y paralelizado, para resolver los 128 sistemas lineales independientes para cada par de PLPUFs.
    *   Para cada solución encontrada, se registró el porcentaje de filas satisfechas en la ecuación (2), lo que indica cuántas veces el bit fue predicho correctamente.
    *   La frecuencia base para cada PUF fue de 100 MHz, y la duración de activación se varió de 1 a 32 ciclos.

5.  **Métrica de Evaluación:** La **predictibilidad** se calculó como el porcentaje promedio de bits predichos correctamente en los 128 bits de la respuesta. Un valor ideal para una PUF es del 50% (comportamiento aleatorio). Para una interpretación más intuitiva, se aplicó una transformación $2 \cdot p - 1$ (donde $p$ es el porcentaje de predictibilidad), escalando el rango de 0% (aleatorio) a 100% (perfectamente predecible).

### 3. Resultados Más Importantes

Los resultados se presentan en mapas de calor que muestran el porcentaje de predictibilidad promedio entre los 992 pares de PLPUFs para diferentes duraciones de activación.

*   **Dependencia de la Duración de Activación:** La predictibilidad disminuye a medida que aumenta la duración de activación.
    *   **Duración de Activación = 1 (mínima):** La predictibilidad promedio entre pares de PLPUFs no ubicados en la misma posición en la FPGA alcanza aproximadamente el **70%**. Para pares de PLPUFs ubicados en la **misma posición** en diferentes FPGAs, la predictibilidad puede ser tan alta como el **96%**. Esto sugiere que las PUFs en la misma ubicación física tienen características de hardware más similares, lo que aumenta su predictibilidad.
    *   **Duraciones de Activación Mayores (ej., 31):** La predictibilidad promedio **disminuye significativamente a aproximadamente el 30%**.
*   **No Aleatoriedad Completa:** Incluso con duraciones de activación extendidas, las PLPUFs no exhiben una aleatoriedad completa (que se traduciría en un 0% de predictibilidad según la métrica utilizada). Un 30% de predictibilidad aún indica una desviación de la aleatoriedad ideal.
*   **Bandas Diagonales en Mapas de Calor:** Las bandas diagonales con puntuaciones más altas en los mapas de calor (Figura 2) indican que las PLPUFs en la misma posición en diferentes placas FPGA tienden a tener una mayor predictibilidad en comparación con otros pares de PLPUFs.

### 4. Conclusiones

Este trabajo identifica un **riesgo de seguridad crítico** en las implementaciones de PLPUFs: la **duración de activación influye significativamente en la predictibilidad de las respuestas**.

*   Los autores son los primeros en demostrar

---

## Pseudo-LFSR PUF A Compact, Efficient and Reliable Physical Unclonable Function.pdf

El documento "Pseudo-LFSR PUF: A Compact, Efficient and Reliable Physical Unclonable Function" presenta una nueva Función Físicamente Inclonable (PUF) denominada Pseudo-LFSR PUF (PL-PUF), diseñada para ser compacta, eficiente y fiable. El trabajo se enfoca en la implementación y evaluación de esta PUF en FPGAs para aplicaciones de seguridad, como la identificación de dispositivos y la protección de bitstreams.

**Puntos Clave y Metodología Principal:**

1.  **Concepto de PL-PUF:** La PL-PUF se basa en la estructura de un Registro de Desplazamiento con Retroalimentación Lineal (LFSR), pero a diferencia de un LFSR tradicional, no utiliza registros de desplazamiento. En su lugar, se compone de una gran lógica combinacional donde cada "celda" es un inversor (o cualquier lógica combinacional que extraiga la variación del dispositivo como velocidad de señal). La señal de retroalimentación de larga longitud extrae eficazmente la variación inherente del dispositivo, lo que resulta en IDs de salida completamente disímiles entre diferentes dispositivos.
2.  **Arquitectura:** La PL-PUF es esencialmente un oscilador inclonable sensible al retardo. Para un PL-PUF de 128 bits, utiliza 128 inversores y un número reducido de puertas XOR (3 en el ejemplo dado para el polinomio primitivo x^128 + x^126 + x^102 + x^99 + 1). La "challenge" (desafío) es un valor inicial de 128 bits aplicado a la lógica central, y la "response" (respuesta o ID) es la salida de 128 bits de la lógica central.
3.  **Características Innovadoras:**
    *   **Compacta:** Requiere solo inversores y unas pocas puertas XOR, lo que la hace muy pequeña en comparación con otras PUFs (ej. Arbiter PUF que requiere muchos multiplexores).
    *   **Eficiente:** Genera un ID de 128 bits a partir de un único desafío de 128 bits, a diferencia de otras PUFs que pueden requerir múltiples pares desafío-respuesta para generar un ID de la misma longitud.
    *   **Multifuncional:** La relación desafío-respuesta de la PL-PUF puede cambiarse fácilmente sin modificar el hardware, simplemente variando la duración de los ciclos de reloj activos ('c'). Esto permite que una única PL-PUF se comporte como si tuviera múltiples núcleos PUF diferentes, lo que dificulta la clonación de todos los mapeos desafío-respuesta posibles.
    *   **Fiable:** Se espera que genere IDs reproducibles dentro del mismo dispositivo y únicos entre diferentes dispositivos. La fiabilidad es configurable ajustando la duración de los ciclos de reloj activos.
4.  **Implementación:** Se implementó una PL-PUF de 128 bits en 16 FPGAs Virtex-5 XC5VLX30-1 montadas en placas SASEBO-GII. Se utilizó Xilinx ISE 13.1 y PlanAhead v13.1 para el diseño y la colocación en un área fija del FPGA. La tensión del núcleo se estableció en 1.000 V y la frecuencia de operación en 24 MHz.
5.  **Estrategia de Evaluación:** Se evaluaron 100 IDs diferentes (generados a partir de desafíos aleatorios) para cada FPGA, y cada ID se generó 100 veces para probar la reproducibilidad. La duración activa 'c' de la PUF se varió de 1 a 16 ciclos de reloj. Los indicadores de rendimiento utilizados incluyen:
    *   **Reproducibilidad:** Medida por la Distancia Hamming intra-dispositivo (HD) entre IDs generados bajo el mismo desafío y duración activa. Idealmente, debería ser 0.
    *   **Individualidad:** Determinada por la Tasa de Falsa Aceptación (FAR) y la Tasa de Falsa Rechazo (FRR), calculadas a partir de la HD intra-dispositivo y la HD inter-dispositivo. Se busca un punto de Tasa de Error Equivalente (EER) donde FAR y FRR son aproximadamente iguales.

**Resultados y Conclusiones Importantes:**

El documento, aunque truncado, indica que los resultados empíricos demuestran que la PL-PUF exhibe una **Distancia Hamming intra-dispositivo muy pequeña** (alta reproducibilidad) y una **Distancia Hamming inter-dispositivo suficientemente grande** (alta individualidad). Esto sugiere que la PL-PUF puede lograr tasas de FAR/FRR bastante bajas, lo que la hace muy eficaz para la identificación de dispositivos y otras aplicaciones sensibles a la seguridad. La capacidad de la PL-PUF para generar IDs únicos y reproducibles, junto con su naturaleza compacta y eficiente, la posiciona como una solución prometedora para superar las limitaciones de las PUFs existentes.

La "multifuncionalidad" de la PL-PUF, donde la asignación desafío-respuesta puede cambiarse variando la duración de los ciclos de reloj activos, es una característica de seguridad importante. Dificulta la clonación, ya que un atacante tendría que replicar no solo una, sino múltiples (potencialmente infinitas) relaciones desafío-respuesta.

En resumen, la PL-PUF es un diseño innovador que aborda las deficiencias de las PUFs existentes, ofreciendo una solución compacta, eficiente, multifuncional y fiable para la seguridad de hardware, especialmente en el contexto de FPGAs y la protección contra ataques de canal lateral.

---

