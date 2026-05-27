# Resumen de la Carpeta: 03_PUF_Types_Architectures

Esta sección presenta un análisis detallado de los documentos PDF contenidos en la carpeta `03_PUF_Types_Architectures`, enfocándose en los aspectos clave de cada publicación.

---

## Architectural Bias a Novel Statistical Metric to Evaluate Arbiter PUF Variants.pdf

El documento "Architectural Bias: a Novel Statistical Metric to Evaluate Arbiter PUF Variants" introduce el concepto de "Sesgo Arquitectónico" (Architectural Bias) como una nueva métrica estadística para evaluar la calidad de las Funciones Físicas Inclonables basadas en Árbitros (APUF) y sus variantes. El objetivo principal es cuantificar la influencia del diseño arquitectónico de una PUF en la calidad de sus salidas, independientemente de la plataforma de implementación o factores externos.

**Puntos Clave y Metodología Principal:**

1.  **Definición de Sesgo Arquitectónico:** El artículo define el sesgo arquitectónico como el sesgo en el comportamiento desafío-respuesta de una PUF debido a las características arquitectónicas del diseño en sí. Se distingue del "Sesgo de Implementación" (Implementation Bias), que surge de las particularidades de la plataforma de hardware (como las FPGAs). Una PUF con menor sesgo arquitectónico se considera de mejor calidad.

2.  **Análisis de Variantes de APUF:** El estudio se centra en el APUF clásico y dos de sus variantes propuestas para plataformas FPGA:
    *   **APUF (Arbiter PUF):** El diseño original, conocido por su modelabilidad mediante técnicas de aprendizaje automático debido a su Modelo de Retardo Aditivo Lineal (Linear Additive Delay Model).
    *   **PAPUF (Programmable Delay Line APUF):** Utiliza etapas de conmutación que explotan rutas de no intercambio para reducir el sesgo inducido por el diseño.
    *   **DAPUF (Double Arbiter PUF):** Un diseño más elegante que no modifica la estructura básica del interruptor, sino que utiliza dos instancias separadas de APUF para eliminar el efecto del posible sesgo de implementación.

3.  **Modelado Analítico de Retardos:** La metodología central implica el desarrollo de modelos analíticos de retardo lineal aditivo para DAPUF y PAPUF, de manera análoga al APUF clásico. Estos modelos permiten cuantificar el sesgo arquitectónico de cada diseño.

4.  **Métrica de Evaluación de "Bondad" de Instancias PUF:** El sesgo arquitectónico se utiliza para estimar la cantidad de instancias de PUF "buenas" (es decir, utilizables) que un diseño puede generar dentro de una población. Una instancia se considera "buena" si su sesgo está por debajo de un umbral de tolerancia ($\epsilon$).

5.  **Comparación a Nivel de Instancia y de Diseño:** Se propone un esquema para comparar pares de instancias de PUF seleccionadas aleatoriamente de diferentes diseños, así como una extensión para comparar los diseños a nivel general.

6.  **Impacto en Métricas de Calidad de PUF:** Se investiga cómo el sesgo arquitectónico afecta métricas de rendimiento clave de las PUF como la uniformidad, unicidad y fiabilidad.

7.  **Validación Experimental:** Los hallazgos teóricos se validan mediante simulaciones basadas en Matlab e implementaciones en FPGAs (Xilinx).

**Resultados y Conclusiones Más Importantes:**

*   **Cuantificación del Sesgo Arquitectónico:**
    *   **APUF clásico:** Presenta el menor sesgo arquitectónico.
    *   **DAPUF:** Tiene un sesgo arquitectónico mayor que el APUF clásico, pero menor que el PAPUF.
    *   **PAPUF:** Muestra el mayor sesgo arquitectónico.

*   **Fracción de Instancias "Buenas":** Para un parámetro de tolerancia al sesgo $\epsilon = 0.1$:
    *   El 99% de las instancias de APUF son "buenas".
    *   El 33% de las instancias de DAPUF son "buenas".
    *   El 20% de las instancias de PAPUF son "buenas".
    Estos resultados sugieren que, desde una perspectiva puramente arquitectónica, el APUF clásico es superior en términos de la proporción de instancias utilizables.

*   **Impacto en Métricas de Calidad (Predicciones Teóricas y Simulación):**
    *   El APUF clásico se predice con una uniformidad y unicidad superiores, pero una fiabilidad inferior en comparación con PAPUF y DAPUF.
    *   El DAPUF es comparativamente mejor que el PAPUF en términos de uniformidad y unicidad, con un sesgo arquitectónico inherente menor.
    *   Las simulaciones confirman estas tendencias teóricas.

*   **Evaluación Experimental en FPGA:**
    *   Los resultados experimentales en FPGAs de Xilinx establecen que el **DAPUF es una variante de APUF mejor que el PAPUF para implementaciones en FPGAs**. Esto contrasta con el bajo porcentaje de instancias "buenas" predicho por el sesgo arquitectónico, lo que subraya la importancia del sesgo de implementación en entornos reales. El DAPUF, a pesar de su mayor sesgo arquitectónico en comparación con el APUF clásico, logra mitigar los problemas del sesgo de implementación en FPGAs de manera más efectiva que el PAPUF.

**Resumen Exhaustivo:**

El documento aborda un problema crítico en la evaluación de las PUF: la capacidad de distinguir el sesgo inherente al diseño arquitectónico de una PUF del sesgo inducido por la plataforma de implementación. Para ello, introduce el concepto de "Sesgo Arquitectónico", una métrica estadística novedosa que cuantifica la influencia del diseño estructural de una APUF en su comportamiento desafío-respuesta, independientemente de factores externos o de implementación.

La investigación se centra en el APUF clásico y dos de sus variantes populares para FPGAs: PAPUF y DAPUF. A través de un análisis riguroso, los autores desarrollan modelos analíticos de retardo lineal aditivo para PAPUF y DAPUF, siguiendo la línea del APUF clásico. Estos modelos permiten calcular el sesgo arquitectónico para cada diseño.

Un hallazgo crucial es que, desde una perspectiva puramente arquitectónica, el APUF clásico exhibe el menor sesgo, seguido por el DAPUF y, finalmente, el PAPUF con el mayor sesgo. Esta jerarquía se traduce en una mayor proporción de instancias de APUF "buenas" (99% para una tolerancia de $\epsilon=0.1$) en comparación con DAPUF (33%) y PAPUF (20%). Esto implica que, en un escenario ideal sin sesgo de implementación, el APUF clásico sería el más robusto en términos de generación de instancias utilizables.

Además, el estudio examina cómo el sesgo arquitectónico impacta en las métricas de calidad de las PUF (uniformidad, unicidad y fiabilidad). Las predicciones teóricas y las simulaciones sugieren que el APUF clásico tiene una uniformidad y unicidad superiores, pero una fiabilidad inferior, mientras que el DAPUF supera al PAPUF en uniformidad y unicidad, con un menor sesgo arquitectónico inherente.

La

---

## CAPUF - Design of a configurable circular arbiter PUF with enhanced security and hardware efficiency.pdf

El documento "CAPUF - Design of a configurable circular arbiter PUF with enhanced security and hardware efficiency.pdf" presenta el diseño de una nueva variante de la Función Físicamente Inclonable (PUF) denominada **Configurable Circular Arbiter PUF (CAPUF)**. El objetivo principal es mejorar la seguridad y la eficiencia de hardware de las PUF de Árbitro (APUF) existentes, especialmente para aplicaciones en dispositivos de Internet de las Cosas (IoT) y Redes de Sensores Inalámbricos (WSN) con recursos limitados.

**1. Contexto y Motivación:**

Los sistemas de seguridad convencionales requieren recursos computacionales significativos, lo que los hace inadecuados para dispositivos IoT y WSN. Las PUF, al aprovechar las variaciones físicas intrínsecas de los Circuitos Integrados (CI) durante la fabricación, ofrecen una solución de seguridad ligera y de bajo costo para autenticación, anticopia y generación de claves. La Arbiter PUF (APUF) es una de las variantes más populares debido a su estructura ligera, pero es vulnerable a ataques de construcción de modelos y criptoanálisis.

Las técnicas existentes para mejorar la seguridad de las APUF incluyen:
*   **APUF con realimentación (feed-forward APUF):** Aumenta la no linealidad, pero degrada la fiabilidad. Además, las APUF básicas y con realimentación no cumplen el Criterio de Avalancha Estricta (SAC), una propiedad criptográfica deseable.
*   **Composiciones de APUF (XOR APUF, LSPUF, MPUF):** Combinan varias instancias de APUF para mejorar la seguridad, pero a menudo a expensas de la fiabilidad y el sobrecosto de hardware. Las XOR APUF y LSPUF siguen siendo vulnerables a ataques de construcción de modelos, y la MPUF requiere un gran número de APUF componentes.

Este trabajo busca superar estas limitaciones proponiendo una APUF que logre una seguridad mejorada (incluyendo la propiedad SAC) y una mayor eficiencia de hardware.

**2. Propuesta: CAPUF (Configurable Circular Arbiter PUF)**

La CAPUF es una variante de APUF que introduce dos características clave:

*   **Circularidad:** La posición efectiva de los interruptores individuales (que controlan los bits de desafío) cambia dinámicamente según el desafío aplicado. Esto altera la probabilidad de volteo del bit de respuesta, eliminando una "borde" fijo de inicio o fin en la APUF, haciendo que el diseño sea "circular".
*   **Configurabilidad:** Una única APUF básica se configura para generar múltiples instancias de APUF. Esta flexibilidad permite ajustar la arquitectura según los requisitos de seguridad y eficiencia.

**Arquitectura y Componentes Clave:**

La CAPUF logra estas características utilizando:
*   **Interruptores de intercambio de ruta:** Similar a una APUF estándar, pero su configuración es dinámica.
*   **Composición de APUF basada en decodificador:** Se utiliza un decodificador para controlar la posición de los interruptores, lo que aumenta la no linealidad de la PUF. Esto permite que la CAPUF logre la propiedad SAC al alterar rápidamente la posición de los interruptores para frustrar los ataques de criptoanálisis.

**3. Contribuciones Clave:**

El documento destaca las siguientes contribuciones:

*   **Desarrollo de la CAPUF:** Una APUF circular configurable que logra la seguridad deseada manteniendo una buena fiabilidad y una arquitectura rentable.
*   **Análisis estadístico:** Se realiza un análisis exhaustivo de las métricas de rendimiento de la CAPUF, incluyendo SAC y no linealidad, para demostrar su robustez contra ataques de criptoanálisis.
*   **Comparación superior:** Se demuestra, a través de simulaciones y análisis estadísticos, que la CAPUF supera a las variantes existentes como XOR APUF y MPUF en términos de huella de hardware, propiedad SAC, no linealidad, fiabilidad y robustez frente a ataques de construcción de modelos.
*   **Validación de robustez de modelado:** Se evalúa la robustez de modelado de la CAPUF mediante un ataque de aprendizaje automático basado en Redes Neuronales Artificiales (ANN), mostrando una mayor robustez que la XOR APUF y la MPUF.

**4. Metodología y Análisis:**

El estudio emplea las siguientes metodologías:

*   **Diseño y Simulación:** Se implementa la arquitectura de la CAPUF y se simula su comportamiento.
*   **Análisis Estadístico:** Se evalúan métricas clave como:
    *   **Unicidad:** La capacidad de cada PUF de producir respuestas únicas.
    *   **Aleatoriedad:** Qué tan bien se distribuyen las respuestas.
    *   **Fiabilidad:** La consistencia de las respuestas bajo diferentes condiciones ambientales o en el tiempo.
    *   **No Linealidad:** Una medida de la complejidad de la función de respuesta, crucial para la seguridad.
    *   **Criterio de Avalancha Estricta (SAC):** Una propiedad deseable en primitivas criptográficas donde un pequeño cambio en la entrada produce un cambio significativo en la salida.
*   **Evaluación de Seguridad:**
    *   **Ataques de Construcción de Modelos (Machine Learning Attacks):** Se utiliza un ataque basado en ANN para evaluar la robustez de la CAPUF frente a la capacidad de un atacante para predecir las respuestas de la PUF.

**5. Resultados y Conclusiones:**

Los resultados clave presentados en el documento indican que:

*   La CAPUF logra las propiedades deseadas de **Criterio de Avalancha Estricta (SAC)** y **no linealidad** mediante la alteración dinámica de la posición de los interruptores y el uso de la composición basada en decodificador.
*   Muestra una **mayor robustez frente a ataques de construcción de modelos** (evaluados con ANN) en comparación con XOR APUF y MPUF.
*   Ofrece una **mayor eficiencia de hardware** en comparación con otras PUF que logran niveles de seguridad similares, lo que la hace adecuada para dispositivos con recursos limitados.
*   Mantiene una **buena fiabilidad** a pesar de las mejoras en seguridad.
*   La flexibilidad de la configurabilidad de la CAPUF le otorga una ventaja significativa sobre muchas variantes de PUF existentes.

En resumen, la CAPUF representa un avance significativo en el diseño de APUF al abordar las vulnerabilidades de seguridad y las limitaciones de recursos de las variantes existentes. Su diseño configurable y circular, combinado con el uso de un decodificador para el control de interruptores, mejora la no linealidad y la propiedad SAC, lo que resulta en una PUF más segura y eficiente, ideal para aplicaciones de seguridad de hardware en IoT y WSN.

---

## Design of Lightweight and Configurable Strong Physical Unclonable Function.pdf

El documento PDF "Design of Lightweight and Configurable Strong Physical Unclonable Function.pdf" presenta el diseño de una **Función Física Inclonable Fuerte (Strong Physical Unclonable Function, PUF) ligera y configurable** que busca mejorar la resistencia a los ataques de modelado, un problema común en las PUF existentes. El trabajo propone una arquitectura basada en un **Arbiter PUF (APUF)** central, combinado con dos **Registros de Desplazamiento de Retroalimentación Lineal (Linear Feedback Shift Register, LFSR)** para la ofuscación de los estímulos.

**Problema Abordado:**
Las PUF tradicionales, como la APUF, tienen una estructura relativamente simple, lo que las hace vulnerables a ataques de modelado. Estos ataques utilizan algoritmos de aprendizaje automático para predecir los pares estímulo-respuesta (Challenge-Response Pairs, CRP) de una PUF, comprometiendo su seguridad. El objetivo es diseñar una PUF que sea robusta contra estos ataques sin incurrir en un alto costo de hardware, lo cual es crucial para dispositivos IoT y embebidos con recursos limitados.

**Metodología Principal y Arquitectura Propuesta:**
La solución propuesta se centra en un mecanismo de ofuscación de estímulos dinámico y ligero. La arquitectura consta de los siguientes componentes clave:
1.  **Un LFSR de estructura fija (LFSR B):** Actúa como un generador de números pseudoaleatorios para proporcionar señales de selección aleatorias a la lógica de ofuscación. Su semilla de inicialización se graba una sola vez en el dispositivo (OTP) durante la fabricación, asegurando la unicidad.
2.  **Un LFSR dinámico (LFSR A):** Este es el corazón de la lógica de ofuscación. Recibe el estímulo original y lo ofusca. Su característica clave es que utiliza **múltiples polinomios de retroalimentación** que se seleccionan dinámicamente. El LFSR B controla cuál de estos polinomios se utiliza en cada ciclo de reloj.
3.  **Un circuito APUF embebido:** La APUF recibe los estímulos ofuscados generados por el LFSR A. Al ofuscar el estímulo real que llega a la APUF, los atacantes no pueden obtener directamente los CRPs verdaderos de la APUF, lo que dificulta el modelado.

**Proceso de Ofuscación:**
*   El estímulo original (c) se carga en el LFSR A como semilla.
*   Antes de generar la respuesta, hay una **fase de inicialización** de 'n' ciclos de reloj. Durante esta fase, el LFSR A se ejecuta 'n' veces sin que sus salidas sean utilizadas directamente para la APUF. Esto evita que el atacante obtenga cualquier solapamiento entre el estímulo original y las salidas iniciales del LFSR A.
*   Después de la inicialización, el LFSR A continúa generando estímulos ofuscados, que son cargados en la APUF.
*   El LFSR B, con su polinomio de retroalimentación fijo, genera una secuencia pseudoaleatoria. Un subconjunto de 'k' bits de esta secuencia se utiliza para seleccionar uno de los $2^k$ polinomios primitivos predefinidos para el LFSR A, cambiando dinámicamente su comportamiento.

**Análisis de Seguridad y Parámetros de Configuración:**
El documento analiza la resistencia a ataques físicos, criptográficos y de modelado. Destaca la importancia de los siguientes parámetros de configuración:
*   **Longitud del LFSR A (n):** Determina el número de CRPs y la resistencia a ataques de suplantación de identidad por repetición. Se sugiere n ≥ 32 para una baja probabilidad de colisión.
*   **Longitud del LFSR B (m) y bits de selección (k):** La longitud m de LFSR B determina el período de su secuencia de salida ($2^m - 1$). Los k bits de esta secuencia controlan la selección de los $2^k$ polinomios para LFSR A. Se requiere que el período del LFSR B sea suficiente (l ≥ n) para asegurar que los estímulos ofuscados no se repitan dentro de un evento de aplicación.
*   **Umbral de Tolerancia a Fallos (τ):** Se introduce para manejar la variabilidad de la PUF debido a ruido ambiental (temperatura, voltaje). Permite un cierto número de errores en la respuesta sin que se considere un fallo, reduciendo la necesidad de circuitos de corrección de errores complejos. El valor de τ debe ser equilibrado entre la fiabilidad y la probabilidad de falsos positivos.

El análisis matemático muestra que, a diferencia de la APUF original donde la relación entre estímulo y respuesta es lineal, en la PUF propuesta, la relación se vuelve compleja y no lineal debido a la ofuscación dinámica del LFSR A. Esto aumenta significativamente la dificultad para que los algoritmos de aprendizaje automático modelen la PUF.

**Resultados y Evaluación:**
La propuesta se evaluó mediante simulaciones en Python y una implementación en FPGA. Se utilizaron 50 instancias de PUF con parámetros n=64, m=8, k=2.

*   **Uniformidad:** La PUF propuesta exhibió una uniformidad cercana al valor ideal del 50% (49.91% - 50.07% en diferentes condiciones de ruido), lo que indica una buena aleatoriedad en las respuestas. Esto es comparable o ligeramente mejor que la APUF clásica (47.91% - 49.07%).
*   **Unicidad:** La unicidad también fue cercana al ideal del 50% (50.03% - 50.14%), demostrando una fuerte diferenciación entre distintas instancias de PUF. Similarmente, comparable o ligeramente mejor que la APUF (49.54% - 50.07%).
*   **Fiabilidad:** La fiabilidad se mantuvo a niveles altos, especialmente con niveles bajos de ruido (98.40% - 99.60% para ruido α=1/20 y α=1/80, respectivamente), comparable a la APUF clásica. Esto indica que la ofuscación no degrada la estabilidad de la PUF.
*   **Resistencia a Ataques de Modelado:** Este es el punto fuerte del diseño. El documento afirma que el diseño propuesto puede resistir una variedad de algoritmos de aprendizaje automático y aprendizaje profundo, ya que la complejidad no lineal introducida por los LFSR dinámicos hace que sea extremadamente difícil para los atacantes obtener los estímulos reales y, por lo tanto, modelar la PUF.
*   **Costo de Hardware:** El diseño es considerado ligero, con un bajo costo de hardware, lo que lo hace adecuado para dispositivos con recursos limitados.

**Conclusiones:**
El documento presenta un diseño de Strong PUF ligero y configurable que aborda eficaz

---

## Design of silicon Physical Unclonable Function for authentication of a multicore device.pdf

El documento "Design of Silicon Physical Unclonable Function for Authentication Of A Multicore Device" (Diseño de Función Física Inclonable de Silicio para la Autenticación de un Dispositivo Multinúcleo) presenta una nueva propuesta de diseño de PUF (Physical Unclonable Function) basada en retardo, específicamente diseñada para la autenticación y diagnóstico de fallas en dispositivos multinúcleo.

**1. Resumen General y Contexto:**

El artículo aborda la creciente preocupación por la seguridad de los circuitos integrados (IC), como la falsificación, la ingeniería inversa y la manipulación. Destaca que las técnicas criptográficas tradicionales son costosas y requieren memoria externa para almacenar identificadores. En contraste, las PUF ofrecen una alternativa eficiente, segura y económica para la autenticación, aprovechando las variaciones inherentes al proceso de fabricación de un chip. Una PUF genera un patrón de bits único (respuesta) para una entrada específica (desafío), y esta respuesta es imposible de replicar incluso conociendo el diseño del dispositivo debido a su dependencia de propiedades físicas intrínsecas.

**2. Propiedades Clave de las PUF:**

El documento enfatiza tres propiedades fundamentales de las PUF:
*   **Fiabilidad:** La respuesta debe ser consistente ante variaciones de voltaje y temperatura.
*   **Uniformidad:** La distribución de 0s y 1s en la salida debe ser equitativa (idealmente 50%), lo que se relaciona con la aleatoriedad.
*   **Unicidad:** Dos instancias del mismo diseño de PUF deben producir respuestas diferentes para el mismo desafío, con una distancia de Hamming cercana al 50%. Esta propiedad es crucial para la generación de claves o firmas únicas.

Las PUF eliminan la necesidad de costosas memorias no volátiles para el almacenamiento de claves y proporcionan una robusta barrera de seguridad.

**3. Aplicaciones de las PUF:**

El artículo menciona diversas aplicaciones de las PUF, incluyendo:
*   Identificación de sistemas
*   Generación de claves secretas
*   Generación de números aleatorios
*   Criptografía
*   Etiquetas RFID para aplicaciones médicas (ámbito en el que el diseño propuesto busca aplicación).

**4. Trabajos Previos y Clasificación de PUF:**

El documento revisa brevemente la literatura existente sobre PUF, clasificándolas de varias maneras:
*   **Por material de fabricación:** PUF de silicio y no silicio (ópticas, de papel, acústicas, CD, RF-DNA, magnéticas, de fósforo). Las PUF de silicio son de particular interés por su costo y facilidad de integración.
*   **Por número de pares desafío-respuesta (CRP):** PUF fuertes (con un gran número de CRP, como las ópticas, Arbiter PUF, PUF ligeras seguras) y PUF débiles (con un número limitado de CRP, como las basadas en memoria, RO PUF, Glitch PUF).
*   **Dentro de las PUF de silicio, según la fuente de variación:**
    *   **Basadas en memoria:** SRAM PUF, Butterfly PUF, Latch PUF, Flip-Flop PUF, Bi-stable Ring PUF, MECCA PUF.
    *   **Electrónica analógica:** ICID, Coating PUF, Silicon Nano Key, LC-PUF, Power Grid PUF.
    *   **Basadas en retardo:** Arbiter PUF, Ring Oscillator PUF (RO PUF), Anderson PUF, Memristor PUF, Thyristor-based PUF.

El artículo describe brevemente el funcionamiento de algunas PUF basadas en retardo:
*   **Arbiter PUF:** Utiliza "pistas de carrera" con un árbitro (generalmente un flip-flop D) para determinar qué señal llega primero, aprovechando diferencias de retardo.
*   **Ring Oscillator PUF (RO PUF):** Emplea osciladores en anillo cuyas frecuencias varían ligeramente debido a las variaciones del proceso. Las mediciones diferenciales mejoran los resultados.
*   **Anderson PUF:** Diseñada para FPGAs, utiliza los multiplexores de cadena de acarreo presentes en ciertos componentes de FPGA.
*   **Memristor PUF:** Aprovecha la variabilidad en el tiempo de "SET" de los memristores.
*   **Thyristor-based PUF:** Utiliza sensores basados en tiristores para capturar variaciones del proceso, amplifica pequeñas diferencias de retardo y emplea un mecanismo de votación y un algoritmo de difusión para generar IDs estables y uniformes.

**5. Sistema Propuesto: Nuevo Diseño de PUF de Silicio para Autenticación de Dispositivos Multinúcleo**

El documento propone un nuevo diseño de PUF de silicio basado en retardo que no solo permite la autenticación, sino también el diagnóstico de fallas en dispositivos multinúcleo. El sistema opera en dos modos:

*   **Modo Normal (Autenticación del Dispositivo):**
    *   Genera una "firma dorada" (golden signature) o ID del dispositivo aprovechando las variaciones inherentes al proceso y sin hardware adicional excesivo.
    *   El retardo se simula comparando la respuesta de una ecuación polinómica aleatoria con la salida del dispositivo multinúcleo.

*   **Modo de Prueba (Diagnóstico de Fallas del Sistema):**
    *   Las firmas generadas y almacenadas en memoria se comparan con las IDs generadas en tiempo de ejecución por cada procesador del dispositivo multinúcleo.
    *   Cualquier desviación en las IDs indica una falla en el procesador correspondiente.
    *   También es posible un diagnóstico general de fallas utilizando una única ID para todo el dispositivo.

**6. Etapas del Sistema Propuesto:**

El sistema propuesto consta de las siguientes etapas:

*   **Generación Automática de Patrones de Prueba (ATPG):**
    *   Se generan patrones de prueba automáticos a partir de dos entradas de 32 bits utilizando secuencias de reinicio y reloj.
    *   Se utiliza lógica diferente para generar patrones para elementos de procesador individuales en un dispositivo multinúcleo, adaptándose a las secuencias de reloj.

*   **Dispositivo Multinúcleo:**
    *   Este es el dispositivo objetivo a autenticar o para el cual se generará una firma única.
    *   El trabajo considera una arquitectura de procesador multinúcleo aritmética que incluye un sumador, un comparador, un restador y una unidad multiplicadora.
    *   Cada procesador genera una salida de 64 bits a partir de entradas de 32 bits.
    *   Además de la creación de la firma, el sistema busca identificar si alguno de los procesadores está defectuoso.

*   **Generación de Patrones Basada en Polinomios:**
    *   

---

## Designing a Strong Physically Unclonable Function Using Low Power LFSR.pdf

El documento "Designing a Strong Physically Unclonable Function Using Low Power LFSR" aborda la creciente preocupación por la seguridad en los sistemas electrónicos y propone una solución innovadora basada en Funciones Físicamente Inclonables (PUF) y Registros de Desplazamiento con Retroalimentación Lineal (LFSR) de bajo consumo.

**Puntos Clave:**

*   **Problema de Seguridad Actual:** Los sistemas de seguridad tradicionales, como los basados en cifrado, dependen de claves almacenadas que pueden ser clonadas, comprometiendo la seguridad de los datos y los dispositivos.
*   **PUF como Solución:** Las PUF se presentan como una alternativa robusta para la autenticación de dispositivos y el almacenamiento de información secreta, ya que aprovechan las variaciones físicas únicas e incontrolables en el proceso de fabricación de los circuitos integrados, eliminando la necesidad de almacenar claves en memorias como EEPROM o SRAM.
*   **Mejora de la Seguridad con LFSR:** La combinación de PUF con LFSR se utiliza para generar números aleatorios, lo que aumenta la seguridad. El documento propone específicamente el uso de LFSR de bajo consumo (LP LFSR) para mejorar aún más la aleatoriedad y, por ende, la seguridad.
*   **Concepto de Aleatoriedad:** La aleatoriedad es un factor crucial en la seguridad, y el diseño propuesto busca maximizarla mediante una alta actividad de conmutación en el LP LFSR.

**Metodología Principal:**

El trabajo se centra en el diseño e implementación de una PUF fuerte utilizando un LFSR de bajo consumo.

1.  **Fundamentos de PUF:** Se introduce el concepto de PUF, sus tipos (analógicas y digitales) y sus subdivisiones (basadas en retardo como Ring Oscillator PUF y Arbiter PUF). Se explica que las PUF funcionan extrayendo respuestas únicas de las características físicas de un IC.
2.  **Introducción a LP LFSR:** Se describe la arquitectura de un LP LFSR de 4 bits, destacando el uso de un "flip-flop ficticio" (dummy flip-flop) para conectar los D flip-flops y un circuito de Inyección Aleatoria (RI) que consiste en puertas AND, OR y un multiplexor. Se argumenta que esta configuración aumenta la actividad de conmutación y, por lo tanto, la aleatoriedad.
3.  **PUF basada en LFSR:** Se explica cómo una PUF débil se conecta a un extractor de bits, cuya salida (una matriz de respuestas PUF, Pi(x)) se realimenta a un LFSR básico para generar números aleatorios.
4.  **Diseño Existente (Referencia):** Se presenta un diseño existente de una PUF basada en LFSR de 16 bits. En este diseño, la PUF se conecta a registros de desplazamiento a través de puertas AND, y los registros se dividen en dos secciones conectadas por puertas XOR para reducir el área.
5.  **Diseño Propuesto (32-bit LP LFSR basado en PUF):**
    *   La arquitectura propuesta utiliza un LFSR de bajo consumo de 32 bits.
    *   Una PUF débil de 16 bits se conecta como retroalimentación al LP LFSR.
    *   El LFSR de 32 bits se implementa como un par de registros de desplazamiento para reducir el área del circuito.
    *   La PUF débil se conecta a 16 puertas XOR dentro de este diseño.
    *   El objetivo es generar una salida de 32 bits de cada registro de desplazamiento del par.

**Resultados Más Importantes:**

El documento presenta una tabla comparativa de los diseños existente y propuesto en términos de Potencia, Área, Retardo (PAD) y Aleatoriedad.

*   **Simulación:** Se muestran resultados de simulación para el diseño existente (PUF basada en LFSR de 16 bits) y el diseño propuesto (PUF basada en LP LFSR de 32 bits). Las simulaciones indican un aumento en la aleatoriedad de la salida cada 50 nanosegundos de reloj para ambos diseños, siendo presumiblemente mayor en el propuesto.
*   **Comparación de PAD y Aleatoriedad (Tabla 1):**
    *   **Diseño Existente (16-bit PUF Based LFSR):**
        *   Potencia: 104 mW
        *   Área: 161
        *   Retardo: 14.5 ns
        *   Aleatoriedad: 89%
    *   **Diseño Propuesto (32-bit Low Power LFSR Based PUF):**
        *   Potencia: 89 mW
        *   Área: 172
        *   Retardo: 11.2 ns
        *   Aleatoriedad: 94%

**Conclusiones:**

*   El diseño propuesto de una PUF basada en LP LFSR de 32 bits, implementado utilizando XILINX ISE DESIGN SUITE 14.7, demuestra una **mejora significativa en la generación de aleatoriedad (94% frente a 89%)**, lo que conduce a una mayor seguridad en la autenticación.
*   Esta mejora se atribuye a la **alta actividad de conmutación** en el circuito propuesto del LP LFSR.
*   Además de la aleatoriedad, el diseño propuesto también logra **reducir el consumo de energía (89 mW frente a 104 mW)** y el **retardo (11.2 ns frente a 14.5 ns)** en comparación con el diseño existente.
*   Aunque el área del diseño propuesto es ligeramente mayor (172 frente a 161), las mejoras en aleatoriedad, potencia y retardo lo hacen un enfoque prometedor.
*   Los autores sugieren que el trabajo futuro podría centrarse en optimizar aún más los parámetros de consumo de energía y área para obtener mejores resultados.

En resumen, el documento presenta un diseño de PUF robusto y eficiente que aprovecha las propiedades de bajo consumo y alta aleatoriedad de los LP LFSR para mejorar la seguridad en la autenticación de dispositivos, ofreciendo ventajas notables sobre las implementaciones existentes en términos de aleatoriedad, potencia y retardo.

---

## NLFSR PUF - A lightweight and reliable strong PUF with modeling-attack resistance.pdf

El documento "NLFSR PUF - A lightweight and reliable strong PUF with modeling-attack resistance.pdf" propone una nueva Función Física Inclonable (PUF) basada en un Registro de Desplazamiento con Retroalimentación No Lineal (NLFSR) para abordar las vulnerabilidades de las PUFs fuertes ante ataques de modelado basados en aprendizaje automático (ML).

**Puntos Clave y Problema Abordado:**

El rápido crecimiento de los dispositivos IoT plantea desafíos de seguridad significativos, ya que sus recursos limitados dificultan el uso de criptografía convencional. Las PUFs ofrecen una solución basada en hardware al explotar variaciones de fabricación para autenticación y generación de claves. Sin embargo, las PUFs fuertes actuales son vulnerables a ataques de modelado de ML, que pueden predecir sus respuestas con alta precisión a partir de un conjunto modesto de pares desafío-respuesta (CRP). Este documento busca desarrollar una PUF ligera y confiable que resista estos ataques.

Las PUFs fuertes existentes que intentan mitigar estos ataques a menudo utilizan Registros de Desplazamiento con Retroalimentación Lineal (LFSRs) para ofuscar los desafíos o respuestas. Sin embargo, la naturaleza lineal de los LFSRs los hace susceptibles a la inversión algebraica y a ataques de correlación una vez que el atacante recupera el polinomio de retroalimentación y la semilla inicial. Algunas propuestas intentan dinámicamente refrescar los taps de retroalimentación, pero esto conlleva un considerable overhead de hardware y una degradación de la fiabilidad.

**Metodología Principal y Arquitectura Propuesta (NLFSR PUF):**

La contribución central de este trabajo es un marco de ofuscación genérico basado en un NLFSR que puede integrarse con las PUFs fuertes existentes. La clave es introducir una fuerte no linealidad y un estado interno en el mapeo desafío-respuesta, lo que interrumpe los modelos de retardo lineales explotados por los ataques de ML.

La NLFSR PUF propuesta combina un núcleo de Arbiter PUF (APUF) con un NLFSR. La APUF tradicional se modela mediante un modelo de retardo lineal aditivo, donde la respuesta final se determina por la diferencia total de retardo de las rutas. El NLFSR se utiliza para ofuscar los desafíos antes de que lleguen a la APUF, o para procesar las respuestas de la APUF.

El NLFSR se diferencia del LFSR en que su función de retroalimentación incluye operaciones no lineales (por ejemplo, AND, OR, XOR combinadas de forma no lineal), lo que hace que su comportamiento sea mucho más complejo y difícil de predecir o invertir algebraicamente. El documento también analiza la propagación del ruido en LFSR y NLFSR, demostrando que el ruido de salida del NLFSR decae exponencialmente a un nivel acotado, lo que preserva la fiabilidad de la respuesta.

**Resultados y Evaluación:**

Los experimentos se realizaron en una FPGA Xilinx Artix-7, implementando una NLFSR PUF de 64 etapas. Los resultados clave son:

*   **Resistencia a Ataques de Modelado:** La NLFSR PUF reduce significativamente la precisión de predicción de modelos de aprendizaje avanzados como la Regresión Logística (LR), la Estrategia de Evolución de Adaptación de Matriz de Covarianza (CMA-ES), Redes Neuronales Artificiales (ANN), Redes Neuronales Profundas (DNN) y Máquinas de Vectores de Soporte (SVM). La precisión se reduce a aproximadamente el 50%, lo que equivale a una adivinación aleatoria, lo que indica una fuerte resistencia a estos ataques.
*   **Eficiencia en Hardware:** La NLFSR PUF logra un menor overhead de área, reduciéndolo en casi un 33% en comparación con las PUFs ligeras existentes.
*   **Fiabilidad:** La PUF propuesta alcanza una fiabilidad del 96.47% sin necesidad de filtrado de CRP. La fiabilidad se mantiene robusta en un rango de temperaturas de -10°C a 60°C (91.66% a 96.47%) y variaciones de voltaje (93.40% a 0.90V, 96.47% a 1.00V, y 88.79% a 1.10V).
*   **Unicidad:** Muestra una unicidad del 49.99%, lo cual es un buen indicador de la distinguibilidad entre diferentes instancias de la PUF.
*   **Aleatoriedad:** La aleatoriedad de las respuestas generadas pasa las pruebas NIST SP800-22, lo que confirma su idoneidad para la generación de claves.

**Conclusiones:**

El documento concluye que la NLFSR PUF propuesta es una solución prometedora para la seguridad de hardware en dispositivos IoT con recursos limitados. Al introducir una fuerte no linealidad a través del NLFSR, la PUF es capaz de romper los modelos de retardo lineales utilizados en los ataques de ML, reduciendo drásticamente su precisión de predicción. Además, la NLFSR PUF demuestra ser ligera en términos de consumo de recursos de hardware, al tiempo que mantiene una alta fiabilidad y unicidad, y genera respuestas con buena aleatoriedad. Estas características la hacen adecuada para aplicaciones como la autenticación de dispositivos y la generación de claves en entornos restringidos.

---

## Physical unclonable functions based secret keys scheme for securing big data infrastructure communication.pdf

El documento "Physical unclonable functions based secret keys scheme for securing big data infrastructure communication" aborda la vulnerabilidad de las claves secretas en dispositivos ZigBee, que son fundamentales para la infraestructura del Internet de las Cosas (IoT) y la recolección de datos en sistemas Big Data. Propone el uso de Funciones Físicas Inclonables (PUF) para mejorar la seguridad del hardware de estos dispositivos, protegiendo el almacenamiento y la generación de claves secretas.

**Puntos Clave y Problema Abordado:**

1.  **Vulnerabilidad de ZigBee:** Aunque ZigBee ofrece un robusto stack de seguridad con diversas claves secretas (Master key, Link key, Network key, etc.), sus dispositivos son susceptibles a ataques de canal lateral y extracción de claves. Esto se debe a que, por su naturaleza de bajo costo y recursos limitados, la mayoría de los dispositivos ZigBee almacenan sus claves secretas en texto plano en memorias no volátiles (NVM).
2.  **Importancia de la Seguridad en IoT y Big Data:** Los dispositivos IoT son cruciales para la recopilación de datos en sistemas Big Data. La seguridad de estos dispositivos impacta directamente la seguridad de todo el sistema, especialmente cuando manejan datos sensibles (médicos, personales).
3.  **Insuficiencia de la Criptografía Tradicional:** Los algoritmos criptográficos modernos son fuertes en la protección de enlaces lógicos, pero los dispositivos físicos se han convertido en el eslabón más débil, siendo blanco de ataques físicos (canal lateral, inyección de fallas) para extraer información crítica.
4.  **Hardware Intrinsic Security (HIS):** Se presenta HIS, y en particular las PUF, como una solución prometedora para mejorar la seguridad del hardware, comenzando por la protección del almacenamiento de claves secretas.

**Metodología Principal:**

El trabajo se centra en el uso de **SRAM-PUF** (Static Random Access Memory - Physical Unclonable Function) para proteger las claves secretas de ZigBee. La elección de SRAM-PUF se justifica porque la SRAM ya es un componente común en muchos sistemas electrónicos, eliminando la necesidad de hardware adicional.

La propuesta incluye dos esquemas principales:
1.  **Protección del almacenamiento de claves basado en PUF:** Utilizar las PUF para salvaguardar las claves secretas almacenadas en la NVM.
2.  **Generación de claves basada en PUF:** Generar las claves secretas directamente a partir de las PUF.

Los experimentos se basan en la lectura de los **Valores de Inicio de las Celdas SRAM (SVSCs)**, que exhiben un comportamiento aleatorio y único debido a las variaciones de fabricación. Sin embargo, se reconoce que la salida de las SRAM-PUF puede tener defectos en la aleatoriedad y fiabilidad. Para abordar esto, el documento propone **dos algoritmos** diseñados para:
*   Superar los defectos en la aleatoriedad de las claves generadas por SRAM-PUF.
*   Aumentar la fiabilidad de estas claves.

Aunque el extracto no detalla explícitamente estos algoritmos, menciona que son fundamentales para la mejora propuesta. El objetivo es que las claves generadas o protegidas sean "sin costo, altamente seguras, aleatorias, estables y volátiles".

**Resultados Más Importantes (según el extracto):**

*   Se demostró la capacidad de SRAM-PUF para proteger eficazmente los materiales de clave de los dispositivos ZigBee, tanto generando claves como asegurando las almacenadas en NVM, sin requerir hardware adicional.
*   Los algoritmos propuestos lograron una mejora significativa en la aleatoriedad y fiabilidad de las claves generadas a partir de SRAM-PUF.
*   Se logró una mejora sustancial en la seguridad del hardware de los Dispositivos Finales ZigBee (ZEDs) mediante la protección de sus materiales de clave utilizando claves secretas basadas en PUF, que son de bajo costo, alta seguridad, aleatorias, estables y volátiles.
*   Investigaciones previas (mencionadas en la sección de trabajos relacionados) mostraron que, aunque la mayoría de las celdas SRAM tienden a iniciar en estado "1", la distancia de Hamming entre chips (inter-die HD) y dentro de un mismo chip (intra-die HD) confirma la variabilidad y unicidad de las respuestas PUF.

**Conclusiones:**

El estudio concluye que las Funciones Físicas Inclonables, específicamente las SRAM-PUF, ofrecen una solución prometedora y práctica para mejorar la seguridad de los dispositivos ZigBee frente a ataques físicos. Al aprovechar las características intrínsecas del hardware existente, se puede proteger o generar claves secretas de manera segura, sin incurrir en costos adicionales de hardware. La propuesta de algoritmos para mejorar la aleatoriedad y fiabilidad de las SRAM-PUF es crucial para su adopción efectiva en entornos de seguridad. Esta metodología contribuye a fortalecer la infraestructura de comunicación de Big Data al asegurar uno de sus componentes más vulnerables: los dispositivos IoT en el borde de la red.

---

## Resilient Endurance-Aware NVM-based PUF against Learning-based Attacks.pdf

El documento "Resilient Endurance-Aware NVM-based PUF against Learning-based Attacks" aborda dos desafíos críticos en las Funciones Físicas Inclonables (PUFs) basadas en Memoria No Volátil (NVM): la vulnerabilidad a ataques de aprendizaje automático (ML) y el problema de resistencia (endurance) de las NVMs. Los autores proponen un modelo integral para predecir y analizar los efectos de los cambios de resistencia en las PUFs de NVM, y sobre esta base, presentan un nuevo diseño de PUF de NVM que mejora significativamente la resistencia mientras mantiene la protección contra ataques basados en aprendizaje.

**Puntos Clave:**

1.  **Problema de Resistencia (Endurance) en PUFs de NVM:** Las operaciones de escritura frecuentes en las NVMs provocan desgaste y degradación con el tiempo, lo que reduce la fiabilidad y la vida útil de las PUFs. A diferencia de las NVMs usadas como memoria principal, donde el wear leveling busca una degradación uniforme, en las PUFs, cualquier cambio en el comportamiento individual de las celdas es crítico para la reproducibilidad de las respuestas y puede llevar a fallos de autenticación.
2.  **Vulnerabilidad a Ataques de Aprendizaje Automático:** Las PUFs tradicionales pueden ser vulnerables a ataques donde un adversario recopila suficientes pares desafío-respuesta (CRP) para entrenar modelos de ML y predecir respuestas a desafíos no vistos.
3.  **Ventajas de las NVMs para PUFs:** Las NVMs, especialmente aquellas con características de celda multinivel (MLC), ofrecen un alto grado de variabilidad y complejidad que puede ser explotado para generar respuestas PUF robustas y únicas, mejorando la resistencia contra ataques basados en ML.
4.  **Modelo de Análisis de Resistencia:** El trabajo introduce un modelo analítico basado en cadenas de Markov para predecir la probabilidad de fallo de una PUF de NVM después de un número determinado de desafíos, considerando cómo las escrituras repetidas afectan la calidad y fiabilidad.
5.  **Diseño Propuesto (REAP-NVM):** Se presenta un diseño novedoso de PUF de NVM llamado REAP-NVM (Resilient Endurance-Aware NVM-based PUF) que aborda los problemas de resistencia y los ataques de aprendizaje. Este diseño incorpora técnicas avanzadas para distribuir las operaciones de escritura de manera más uniforme y reducir el estrés en celdas individuales.

**Metodología Principal:**

El estudio se estructura en varias fases:

1.  **Análisis de la Resistencia de NVM-PUF:**
    *   **Modelo de Estados y Transiciones:** Se utiliza un modelo de cadena de Markov para analizar los estados de las celdas NVM (inicial, escritura, lectura, envejecimiento, fallo) y las transiciones entre ellos.
    *   **Parámetros de Fiabilidad:** Se definen métricas como fiabilidad, uniformidad y unicidad para evaluar la calidad de las PUFs. La fiabilidad es particularmente afectada por el envejecimiento de las NVMs.
    *   **Simulación del Envejecimiento:** Se simula cómo las operaciones de escritura y lectura afectan el umbral de tensión de las celdas NVM, lo que lleva a un cambio en su estado (por ejemplo, de "0" a "1" o viceversa) y, en última instancia, a un fallo de fiabilidad.
    *   **Evaluación de Diseños Existentes:** Se evalúa la susceptibilidad a la degradación por resistencia de varios diseños de PUFs de NVM existentes.

2.  **Diseño de REAP-NVM:**
    *   **Estrategia de Mitigación de Resistencia:** REAP-NVM distribuye las operaciones de escritura de manera más uniforme entre las celdas NVM para reducir el desgaste localizado. Esto se logra mediante una selección inteligente de las celdas para cada operación de generación de respuesta.
    *   **Resistencia a Ataques ML:** El diseño aprovecha las características MLC de las NVMs y la aleatoriedad intrínseca para asegurar que las respuestas sean difíciles de modelar por algoritmos de aprendizaje automático.

3.  **Evaluación Experimental:**
    *   **Métricas de Evaluación:** Se evalúa la vida útil (endurance), el consumo de energía y el rendimiento de REAP-NVM.
    *   **Comparación:** Los resultados de REAP-NVM se comparan con soluciones de última generación (baseline) para demostrar las mejoras.

**Resultados Más Importantes:**

*   **Mejora de la Resistencia:** El diseño propuesto, REAP-NVM, demuestra una mejora de 62 veces en la resistencia en comparación con las soluciones de última generación. Esto significa que la PUF puede soportar 62 veces más operaciones de escritura/lectura antes de que su fiabilidad se degrade por debajo de un umbral aceptable.
*   **Mantenimiento de la Resistencia a Ataques ML:** REAP-NVM logra esta mejora en la resistencia sin comprometer su capacidad para resistir ataques basados en aprendizaje automático, una característica clave de las PUFs de NVM.
*   **Análisis Detallado del Impacto del Envejecimiento:** El modelo analítico desarrollado proporciona una comprensión profunda de cómo el desgaste impacta la calidad de la PUF, lo que es fundamental para el diseño de PUFs más robustas.

**Conclusiones:**

El documento concluye que el problema de resistencia es un obstáculo crítico para la adopción práctica de las PUFs basadas en NVM. El modelo analítico presentado es una herramienta valiosa para comprender y predecir el impacto del envejecimiento. El diseño propuesto, REAP-NVM, aborda eficazmente este problema al mejorar significativamente la resistencia (62x) mientras mantiene la seguridad contra ataques de aprendizaje automático. Este trabajo representa un avance importante hacia la creación de PUFs de NVM más duraderas y seguras, lo que facilita su despliegue en aplicaciones de seguridad del mundo real. La investigación subraya la necesidad de considerar la resistencia como una métrica fundamental en el diseño de PUFs de NVM, en lugar de adaptar soluciones genéricas de PUFs basadas en silicio.

---

## Self-Timed Physically Unclonable Functions.pdf

El documento "Self-Timed Physically Unclonable Functions" propone por primera vez el uso de lógica auto-temporizada (self-timed logic) para implementar Funciones Físicamente Inclonables (PUFs), introduciendo dos diseños novedosos: SMARTPUF-I y SMARTPUF-II. El objetivo principal es abordar los desafíos que impiden la adopción generalizada de las PUFs, como la robustez, la entropía, la ligereza arquitectónica y la configurabilidad, buscando habilitar la seguridad de próxima generación en chip ("security-on-chip") a través de estructuras "inteligentes en chip".

**I. Introducción y Motivación**

Las PUFs son una alternativa eficiente para almacenar claves de cifrado digital, explotando las variaciones físicas de fabricación de los chips. A diferencia de las claves almacenadas digitalmente, que pueden ser atacadas o clonadas, las PUFs generan respuestas únicas a desafíos específicos, actuando como una "huella digital" del hardware. A pesar de sus beneficios, las PUFs enfrentan problemas de estabilidad y falta de entropía suficiente para prevenir ataques de modelado.

El autor argumenta que las PUFs son inherentemente asíncronas, ya que explotan efectos no síncronos como la metaestabilidad o los retrasos de propagación. Esta observación lleva a la hipótesis de que las técnicas auto-temporizadas, conocidas por su robustez y alta entropía (por ejemplo, en generadores de números aleatorios), pueden mejorar significativamente el diseño de las PUFs.

**Contribuciones Clave del Trabajo:**
*   Propuesta del uso de lógica auto-temporizada para una nueva clase de PUFs.
*   Diseño de nuevas PUFs como estructuras "inteligentes en chip" para la seguridad de próxima generación.

**II. Lógica Auto-Temporizada**

La lógica auto-temporizada elimina la necesidad de un reloj global para sincronizar operaciones. Aunque históricamente ha sido un nicho debido a la complejidad de su diseño, su interés ha crecido con los límites de la Ley de Moore. Se basa en el uso de histéresis a través de bucles de retroalimentación, donde un elemento de puerta básico (a menudo un elemento Muller-C o C-element) sincroniza las operaciones en lugar de un reloj global.

*   **Elemento Muller-C:** Su propiedad única es que ambas entradas deben ser iguales para establecer o restablecer su salida; si las entradas no coinciden, mantiene su estado original. El documento lo considera una tecnología "inteligente en chip" con potencial para mitigar problemas como el sesgo de reloj, el consumo de energía y el rendimiento en el peor de los casos.

**III. SMARTPUF-I: Reemplazando Osciladores de Anillo por Anillos Auto-Temporizados (STRs)**

SMARTPUF-I propone el uso de Anillos Auto-Temporizados (STRs) como alternativa a los Osciladores de Anillo de Inversores (IROs) utilizados en las PUFs basadas en osciladores de anillo (RO-PUFs). Esto permite una mayor robustez y entropía debido a su configurabilidad inherente.

*   **IROs vs. STRs:**
    *   **IROs (Figura 3):** Consisten en L etapas conectadas en un anillo. El comportamiento oscilatorio se debe al retraso de propagación de un evento alrededor del anillo.
    *   **STRs (Figura 4):** Similares a los IROs, pero cada etapa está compuesta por un elemento Muller-C y un inversor. La tabla de verdad de una etapa STR define cómo se propaga un valor.

*   **Comportamiento del STR (Burbujas y Tokens):**
    *   **Burbuja:** Una etapa `i` contiene una burbuja si su salida `Ci` es igual a la salida de la etapa anterior `Ci-1`.
    *   **Token:** Una etapa `i` contiene un token si su salida `Ci` es diferente a la salida de la etapa anterior `Ci-1`.
    *   **Propagación:** Un token se propaga de la etapa `i` a la `i+1` si y solo si la etapa `i+1` contiene una burbuja. De manera similar, una burbuja se propaga de la etapa `i+1` a la `i` si y solo si la etapa `i` contiene un token.
    *   **Condiciones para Oscilación:** Un STR oscilará si `L >= 3`, `L = Nt + Nb` (donde `Nt` es el número de tokens y `Nb` el de burbujas), `Nb >= 1` y `Nt` es un número par positivo de tokens.

*   **Ruido en STRs vs. IROs:**
    *   Ambos exhiben jitter gaussiano.
    *   **IRO:** El período se define por dos bucles de un token alrededor del anillo, acumulando jitter de las etapas cruzadas.
    *   **STR:** Varios tokens se propagan simultáneamente. El período se rige por el tiempo entre tokens sucesivos. Cada token experimenta una variación en su retraso de propagación debido a la contribución de jitter gaussiano de cada etapa.
    *   **Jitter Determinista:** En un STR, varios eventos se propagan simultáneamente, y el jitter determinista afecta a cada evento de la misma manera, en lugar de afectar a toda la estructura. Esto confiere a los STRs una mayor robustez frente a los IROs y hace que SMARTPUF-I sea más inmune al jitter.

*   **Diseño de SMARTPUF-I:**
    *   Reemplaza los IROs en las RO-PUFs por STRs.
    *   Las RO-PUFs tradicionales comparan las frecuencias `f1` y `f2` de dos IROs idénticamente dispuestos (RO1 y RO2). Un multiplexor selecciona un par de osciladores y la comparación de sus frecuencias genera un bit de respuesta (1 si `f1 > f2`, 0 en caso contrario).
    *   SMARTPUF-I (Figura 8) utiliza dos STRs, seleccionados de manera similar por el desafío de la PUF a través de multiplexores. El STR más rápido determinará el valor de la respuesta.
    *   Es crucial que el tiempo de ejecución del STR sea lo suficientemente bajo para evitar el desbordamiento de los contadores.
    *   Se menciona que la forma en que se encadenan las RO-PUFs para PUFs de n bits podría diferir (por ejemplo, reutilización de STR).
    *   Dado que las frecuencias de los IROs están muy ajustadas, los efectos ambientales pueden hacer que los osciladores cambien sus salidas, con un aumento... (el documento se trunca aquí, pero la idea es que los STRs mitigan esta sensibilidad).

**IV

---

