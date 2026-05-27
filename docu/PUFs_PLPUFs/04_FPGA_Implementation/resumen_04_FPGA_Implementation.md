# Resumen de la Carpeta: 04_FPGA_Implementation

Esta sección presenta un análisis detallado de los documentos PDF contenidos en la carpeta `04_FPGA_Implementation`, enfocándose en los aspectos clave de cada publicación.

---

## A Lightweight LFSR-Based Strong Physical Unclonable Function Design on FPGA.pdf

El documento "A Lightweight LFSR-Based Strong Physical Unclonable Function Design on FPGA" propone un nuevo diseño de Función Física Inclonable Fuerte (Strong PUF) basado en Registros de Desplazamiento con Retroalimentación Lineal (LFSR) para su implementación en FPGAs. El objetivo principal es ofrecer una solución de seguridad de hardware ligera, con alta entropía y un gran espacio de pares Challenge-Response (CRP), adecuada para la autenticación de dispositivos en FPGAs, superando las limitaciones de los diseños tradicionales de Strong PUF, como la PUF de árbitro.

**1. Introducción y Motivación:**
Las FPGAs están ganando terreno en aplicaciones como la inteligencia artificial, big data y computación en la nube debido a su flexibilidad y capacidad de computación. Sin embargo, su uso generalizado plantea desafíos de seguridad, como la sobreproducción, manipulación, clonación e ingeniería inversa. Las soluciones de seguridad existentes (cifrado de bitstreams, protección de memorias de clave) a menudo dependen del almacenamiento de claves en memorias no volátiles (NVM), que son vulnerables a ataques físicos invasivos. Además, estas soluciones pueden introducir una sobrecarga de hardware significativa.
Las Funciones Físicas Inclonables (PUF) emergen como una primitiva de seguridad de hardware prometedora. Las PUF aprovechan las variaciones aleatorias e incontrolables del proceso de fabricación de los circuitos para generar una "huella digital" única para cada dispositivo. Operan bajo un mecanismo de "Challenge-Response", donde las claves y la información privada se generan en tiempo real, evitando el almacenamiento en memorias accesibles.
Las PUF se clasifican en Weak PUF (número limitado de CRPs, usadas para generación de claves) y Strong PUF (número exponencial de CRPs, usadas para autenticación). El documento se centra en las Strong PUF. Los diseños tradicionales de Strong PUF, como la PUF de árbitro, son difíciles de implementar en FPGAs, presentan baja estabilidad, son vulnerables a ataques de aprendizaje automático y a menudo no alcanzan los valores ideales de singularidad.
El Registro de Desplazamiento con Retroalimentación Lineal (LFSR) es un circuito eficiente para la generación de números pseudoaleatorios, conocido por su bajo costo de hardware y buena aleatoriedad, lo que lo hace ideal para diseños de Strong PUF ligeros.

**2. Trabajos Relacionados:**
El documento revisa los diferentes tipos de PUF:
*   **PUF no electrónicas:** Ópticas, de papel, de CD, que utilizan la singularidad de los medios físicos.
*   **PUF analógicas:** VT PUF, LC PUF, que miden magnitudes analógicas y las convierten a digital.
*   **PUF digitales:** Se implementan directamente en formato digital y son las más investigadas. Se dividen en:
    *   **PUF basadas en memoria:** Como las basadas en SRAM, a menudo Weak PUF, difíciles de implementar en FPGAs modernas debido a la inicialización de memoria al encender.
    *   **PUF basadas en retardo:** Incluyen las PUF de Oscilador de Anillo (RO PUF) y las PUF de Árbitro.
        *   **RO PUF:** Comparan las frecuencias de oscilación de dos ROs idénticos para generar un bit de respuesta. Requieren un diseño cuidadoso para asegurar que las diferencias se deban solo a variaciones de proceso.
        *   **PUF de Árbitro:** Utilizan cadenas de multiplexores donde la diferencia de retardo entre dos rutas idénticas (debido a variaciones de proceso) determina la respuesta. Son conocidas por su gran espacio de CRPs, pero tienen problemas de estabilidad, vulnerabilidad a ataques de aprendizaje automático y dificultad de implementación en FPGAs.

**3. Realización de Strong PUF a partir de Weak PUF:**
Dada la mejor estabilidad y singularidad de respuesta de las Weak PUF, una estrategia común es usarlas como fuente de entropía de front-end, combinándolas con una lógica de ofuscación (similar a un generador de números aleatorios) en el back-end para expandir el espacio de CRPs y aumentar la aleatoriedad. Esta lógica debe ser diseñada cuidadosamente para mantener la inclonabilidad. El documento señala que LFSRs son ideales para esta lógica de ofuscación debido a su simplicidad y buen rendimiento de aleatoriedad, a diferencia de otras lógicas como AES o redes neuronales que tienen una sobrecarga de hardware considerable.

**4. Propuesta de Diseño: Strong PUF Ligera Basada en LFSR:**
El diseño propuesto utiliza un enfoque híbrido, combinando una Weak PUF robusta como fuente de entropía con un LFSR para expandir el espacio de CRPs.
*   **Fuente de Entropía (Weak PUF):** El diseño emplea una Weak PUF basada en el tiempo de arranque de los flip-flops (Flip-Flop Startup Time PUF o FFST-PUF). Esta PUF aprovecha la variación inherente en el tiempo que tardan los flip-flops en alcanzar un estado estable (0 o 1) al encenderse o reiniciarse. Al reiniciar un conjunto de flip-flops y medir sus estados iniciales, se obtiene un bitstream aleatorio que sirve como "huella digital" del dispositivo. Esta FFST-PUF es intrínsecamente digital, fácil de implementar en FPGAs y resistente a variaciones de temperatura y voltaje.
*   **Expansión del Espacio CRP (LFSR):** El bitstream generado por la FFST-PUF se alimenta a un LFSR. El LFSR se utiliza para generar secuencias pseudoaleatorias largas. La clave aquí es que el LFSR no es fijo; su configuración (polinomio de retroalimentación) puede ser dinámicamente reconfigurable por el desafío de entrada. Esto permite que el mismo LFSR genere diferentes secuencias pseudoaleatorias para diferentes desafíos, expandiendo exponencialmente el espacio de CRPs.
*   **Mecanismo Challenge-Response:**
    1.  Un desafío de entrada se utiliza para configurar dinámicamente el polinomio de retroalimentación del LFSR.
    2.  La FFST-PUF se activa para generar un conjunto de bits aleatorios (la "semilla" PUF).
    3.  Esta semilla PUF se carga en el LFSR.
    4.  El LFSR, configurado con el polinomio del desafío, comienza a desplazar y generar una secuencia de bits.
    5.  Después de un número predefinido de ciclos de reloj, la salida del LFSR se toma como la respuesta de la Strong PUF.
    Esta reconfiguración dinámica del LFSR por el desafío es crucial para la naturaleza "fuerte" de la PUF, ya que un pequeño cambio en el desafío (y por lo tanto en el polinomio del LFSR) resulta en una respuesta completamente diferente

---

## A large-scale comprehensive evaluation of single-slice ring oscillator and PicoPUF bit cells on 28-nm Xilinx FPGAs.pdf

Este documento presenta una evaluación exhaustiva a gran escala de celdas de bits de oscilador de anillo (RO) de una sola sección y PicoPUF en FPGAs Xilinx de 28 nm. El objetivo principal es investigar el efecto de la ubicación de cada celda PUF de un solo bit, libre de las limitaciones de recursos de enrutamiento entre secciones, y evaluar su rendimiento estadístico utilizando un gran número de dispositivos.

**Puntos Clave del Documento:**

*   **Importancia de las PUFs en FPGAs:** Resalta la necesidad de implementaciones ligeras de primitivas de seguridad (como PUFs y generadores de números aleatorios verdaderos - TRNGs) en FPGAs como reemplazo de claves de descifrado almacenadas en memorias volátiles o E-Fuses, para proteger activos reconfigurables.
*   **Sección como Unidad Básica:** En FPGAs Xilinx, una "slice" (sección) es el bloque lógico reconfigurable más pequeño. La entropía explotable de cada sección es crucial para el diseño de primitivas de seguridad.
*   **Limitación de Investigaciones Previas:** Investigaciones anteriores han demostrado que la ubicación de las secciones puede afectar la calidad de los diseños de PUF basados en retardo. Sin embargo, la mayoría de las celdas PUF adecuadas para FPGAs no caben en una sola sección, introduciendo imprecisiones debido a las restricciones de enrutamiento entre secciones.
*   **Celdas de Un Solo Slice:** El estudio se centra en dos diseños de PUF cuyas celdas principales pueden implementarse completamente dentro de una sola sección de FPGA:
    *   **Oscilador de Anillo (RO):** Genera frecuencias de oscilación que varían de una sección a otra y de un dispositivo a otro.
    *   **PicoPUF:** Genera un bit aleatorio basado en la diferencia de tiempo entre dos rutas de retardo dentro de la misma sección.
*   **Evaluación a Gran Escala:** Para garantizar una evaluación precisa del rendimiento estadístico, se utilizó un banco de pruebas masivo de **217 FPGAs Xilinx Artix-7**. Esta es, según los autores, la evaluación a mayor escala reportada hasta la fecha para entidades de seguridad basadas en el desorden de un solo slice en FPGAs Xilinx de 28 nm.
*   **Métricas de Evaluación:** Se evalúan las siguientes métricas para ambos tipos de celdas y para cuatro tipos diferentes de ubicación de celdas: Unicidad, Uniformidad, Correlación, Fiabilidad, Bit-aliasing y Mini-entropía.
*   **Disponibilidad de Datos:** Los datos brutos del diseño PicoPUF se han hecho públicos para facilitar la investigación y validación de la comunidad.

**Metodología Principal:**

1.  **Selección de Diseños PUF:** Se eligen el Oscilador de Anillo (RO) y el PicoPUF debido a su capacidad para encajar completamente en una sola sección de FPGA.
    *   **RO:** La frecuencia de oscilación de ROs de 3 etapas se utiliza como base.
    *   **PicoPUF:** Se basa en la diferencia de retardo entre dos caminos dentro de la misma sección.
2.  **Plataforma de Hardware:** Se utiliza un conjunto de 217 FPGAs Xilinx Artix-7 (28 nm).
3.  **Instanciación de PUFs:** Se instancian 8000 instancias de PicoPUF y 6592 instancias de RO en cada dispositivo. Esto permite un análisis detallado tanto de las variaciones inter-dispositivo como intra-dispositivo.
4.  **Variación de Ubicación (Floorplan):** Se investiga el impacto de la ubicación de las celdas dentro del FPGA, evaluando cuatro tipos diferentes de colocación.
5.  **Recolección de Datos:** Se recopilan las respuestas de todas las instancias de PUF en todos los dispositivos.
6.  **Cálculo de Métricas:** Se calculan las métricas estadísticas clave:
    *   **Unicidad:** Mide qué tan únicas son las respuestas de PUF entre diferentes dispositivos.
    *   **Uniformidad:** Indica qué tan equilibrada está la distribución de bits 0s y 1s.
    *   **Correlación:** Mide la relación estadística entre las respuestas de diferentes dispositivos.
    *   **Fiabilidad:** Cuántas veces una respuesta de PUF es consistente bajo las mismas condiciones.
    *   **Bit-aliasing:** La probabilidad de que un bit particular tenga el mismo valor en todos los dispositivos.
    *   **Mini-entropía:** La estimación más conservadora de la impredecibilidad de las respuestas, representando el límite inferior de la entropía.
7.  **Análisis y Comparación:** Se comparan los resultados de RO y PicoPUF entre sí y con trabajos relacionados, considerando el uso de recursos y las métricas de calidad.

**Resultados Más Importantes:**

*   **Impacto de la Ubicación:** Los resultados experimentales corroboran que la ubicación de ambos tipos de celdas en el FPGA afecta su rendimiento.
*   **Correlación y Entropía/Unicidad:** Para ambos tipos de celdas, a menor correlación entre dispositivos, mayor es la mini-entropía y la unicidad. Esto sugiere que las PUFs con menor correlación son más impredecibles y únicas.
*   **Comparación RO vs. PicoPUF:**
    *   **Mini-entropía, Correlación y Unicidad:** PicoPUF presenta valores ligeramente más altos en estas métricas que el RO.
    *   **Uniformidad, Bit-aliasing y Fiabilidad:** El PicoPUF muestra valores ligeramente inferiores en estas métricas que el RO.
*   **PicoPUF como PUF Ligera:** Comparando el uso de recursos y las métricas del PicoPUF con el PUF de oscilador de anillo y algunas implementaciones de PUF basadas en memoria existentes, el PicoPUF se destaca como un diseño de PUF débil (weak PUF) basado en FPGA muy ligero.

**Conclusiones:**

El estudio proporciona una evaluación robusta y a gran escala de dos diseños de celdas PUF de un solo slice (RO y PicoPUF) en FPGAs Xilinx de 28 nm. Se confirma que la ubicación física de las celdas en el FPGA es un factor significativo que influye en las métricas de calidad de la PUF. Aunque el PicoPUF demuestra una mini-entropía y unicidad ligeramente superiores, el RO tiene una ligera ventaja en uniformidad, bit-aliasing y fiabilidad. La principal contribución es la demostración de la viabilidad y las características de rendimiento de estos diseños ultra-ligeros que caben en una sola sección lógica

---

## A lightweight and secure-enhanced Strong PUF design on FPGA.pdf

## Resumen Detallado: Un Diseño de PUF Fuerte Ligero y Mejorado en Seguridad en FPGA

Este documento presenta un diseño innovador de Función Física Inclonable (PUF) Fuerte para FPGAs, combinando una PUF Débil con lógica de ofuscación para mejorar la seguridad y la eficiencia. Aborda las limitaciones de los diseños clásicos de PUF, como la dificultad de implementación en FPGAs y la vulnerabilidad a ataques de modelado basados en aprendizaje automático.

### Puntos Clave

*   **Problema Abordado:** Las FPGAs, aunque potentes y flexibles, enfrentan desafíos de seguridad como la sobreproducción, manipulación, clonación e ingeniería inversa. Las PUFs son una solución prometedora, pero los diseños existentes en FPGA son escasos debido a la arquitectura regular y la automatización del diseño, y los diseños de PUF Fuerte clásicos (como la PUF Arbitro) son vulnerables a ataques de aprendizaje automático.
*   **Propuesta:** Un nuevo diseño de PUF Fuerte basado en FPGA que integra una PUF Débil compacta con lógica de ofuscación, utilizando características estructurales específicas de las FPGAs de Xilinx.
*   **Novedad:**
    1.  Implementación de una PUF Débil compacta basada en retardo de tiempo en FPGA de 28 nm que genera una respuesta de 2 bits en una sola "slice".
    2.  Construcción de una PUF Fuerte ligera aprovechando las características estructurales de la FPGA, específicamente la capacidad de las LUTs en SLICEM para configurarse como Registros de Desplazamiento (SRL).
    3.  El diseño propuesto presenta una baja sobrecarga de hardware y buena resistencia a ataques de modelado basados en aprendizaje automático.

### Metodología Principal y Diseño del Circuito

El diseño se divide en dos componentes principales: la PUF Débil y la construcción de la PUF Fuerte a partir de ella.

**1. Diseño de la PUF Débil:**
    *   Se basa en el diseño de Gu et al. [18], que utiliza elementos flip-flop en una "slice" como ruta de retardo y puertas NAND acopladas cruzadas como árbitro.
    *   **Mejora:** Aprovechando la arquitectura de las FPGAs de la serie 7 de Xilinx (28 nm), que incluyen 8 flip-flops, 4 LUTs y 3 multiplexores en cada "slice", el diseño propuesto logra generar una respuesta de 2 bits por "slice". Esto se consigue mediante la configuración de las LUTs para generar NANDs y el uso de los multiplexores y flip-flops internos.
    *   **Restricciones Físicas:** Se utiliza el entorno de desarrollo Vivado de Xilinx para aplicar restricciones físicas precisas (LOC, pines, enrutamiento) para asegurar que las longitudes de las rutas de retardo sean lo más idénticas posible, minimizando la diferencia de retardo nominal.

**2. Diseño de la PUF Fuerte (Ofuscación Lógica):**
    *   A diferencia de las PUFs Arbitro clásicas, que son vulnerables, el enfoque es construir una PUF Fuerte a partir de una PUF Débil estable, añadiendo lógica de ofuscación.
    *   **Mecanismo de Ofuscación:** Se aprovecha la característica de la arquitectura ASMBL de las FPGAs de Xilinx, donde las LUTs en SLICEM pueden configurarse como SRLs (Registros de Desplazamiento) con profundidad ajustable (hasta 32 bits).
    *   **Arquitectura Propuesta:** Cuatro LUTs en una SLICEM se configuran como SRLs de 32 bits. Los desafíos (inputs) se utilizan para controlar dinámicamente la profundidad de desplazamiento de estos SRLs. Las salidas de los SRLs y las PUFs Débiles se combinan mediante puertas XOR de 2 entradas. Esto introduce una complejidad que dificulta el modelado.
    *   **Expansión de CRPs:** La combinación de la PUF Débil con la lógica de SRLs y XORs expande el espacio de pares Desafío-Respuesta (CRPs) de manera exponencial, característica de una PUF Fuerte. La lógica de ofuscación hace que la relación entre el desafío y la respuesta sea no lineal y difícil de modelar.

### Resultados y Análisis de Rendimiento

Los experimentos se realizaron en una FPGA de 28 nm.

*   **Sobrecarga de Hardware:**
    *   La PUF Débil propuesta es muy eficiente, generando 2 bits de respuesta por "slice".
    *   La PUF Fuerte resultante tiene una sobrecarga de hardware "pequeña" (detalles específicos de la cantidad de slices/LUTs utilizadas para la ofuscación se truncan en el extracto, pero el resumen enfatiza su ligereza).
*   **Resistencia a Ataques de Modelado (Aprendizaje Automático):**
    *   Los diseños clásicos de PUF Arbitro son altamente vulnerables a ataques de modelado debido a la correlación entre diferentes CRPs.
    *   El diseño propuesto, al integrar la lógica de ofuscación basada en SRLs y XORs, rompe esta correlación, haciendo que sea mucho más difícil para un atacante construir un modelo predictivo preciso a partir de un subconjunto de CRPs conocidos. Aunque el documento menciona que "la resistencia a ataques de modelado es buena", no se proporcionan métricas específicas (como la precisión de predicción de un atacante) en el extracto.

### Conclusiones

El documento concluye que el diseño propuesto de PUF Fuerte en FPGA es una solución prometedora para la seguridad de hardware. Al combinar una PUF Débil eficiente en recursos con una lógica de ofuscación inteligente que aprovecha las características específicas de las FPGAs, se logra un equilibrio entre:

1.  **Ligereza:** Baja sobrecarga de hardware, haciéndola adecuada para dispositivos con recursos limitados.
2.  **Seguridad Mejorada:** Mayor resistencia a los ataques de modelado basados en aprendizaje automático, que representan una amenaza significativa para las PUFs tradicionales.

Este enfoque permite a las FPGAs generar "huellas dactilares" únicas y fiables, ofreciendo una defensa robusta contra la clonación, la manipulación y otras amenazas a la propiedad intelectual y la integridad del sistema. El trabajo destaca la importancia de diseñar PUFs que no solo aprovechen las variaciones de fabricación, sino que también integren mecanismos de ofuscación lógicos para contrarrestar las técnicas de ataque modernas.

---

## An Efficient Ring Oscillator PUF Using Programmable DelayUnits on FPGA.pdf

El documento "An Efficient Ring Oscillator PUF Using Programmable Delay Units on FPGA" presenta una nueva función físicamente inclonable (PUF) basada en osciladores de anillo (RO), denominada PRO PUF, que utiliza unidades de retardo programables en FPGAs. El objetivo principal es mejorar la eficiencia de hardware y la seguridad de las PUF RO convencionales, manteniendo al mismo tiempo una alta unicidad y fiabilidad.

**Puntos Clave:**

*   **Problema Abordado:** Las PUF RO convencionales, aunque fiables, tienen un alto costo de hardware, especialmente cuando se busca generar un gran número de pares desafío-respuesta (CRPs). Las PUF RO configurables (CRO PUF) existentes mejoran la eficiencia, pero a menudo comprometen la unicidad, la fiabilidad o están limitadas a tecnologías específicas (ASICs o FPGAs obsoletas).
*   **Innovación Principal:** La PRO PUF propuesta utiliza Puntos de Interconexión Programables (PIPs) dentro de unidades de retardo programables en FPGAs para ofrecer una configurabilidad sin precedentes. Esto permite ajustar dinámicamente las rutas de propagación de las unidades de retardo, lo que resulta en una mayor eficiencia de hardware y una mayor cantidad de CRPs generables con menos recursos.
*   **Resistencia a Ataques:** Se evalúa la seguridad de la PRO PUF frente a ataques de modelado basados en aprendizaje automático, específicamente el ataque CMA-ES, mostrando una mayor resistencia en comparación con diseños PUF RO existentes.

**Metodología Principal:**

1.  **Diseño de la PRO PUF:**
    *   La unidad básica de la PRO PUF es una celda que puede ser programada para funcionar como un oscilador de anillo en cualquier etapa.
    *   Se aprovechan los PIPs de las FPGAs para crear unidades de retardo programables, lo que permite modificar el número de unidades de retardo y la ruta de propagación de manera eficiente.
    *   La arquitectura permite la generación de un gran número de respuestas utilizando menos recursos de hardware que las PUF RO tradicionales y CRO PUF.
2.  **Implementación y Evaluación:**
    *   La PRO PUF se implementa en FPGAs de Xilinx (Artix-7 y Kintex-7) para verificar su rendimiento en hardware real.
    *   También se simula el diseño utilizando una tecnología estándar de 40nm para una evaluación más detallada a nivel de ASIC.
    *   Las métricas de evaluación incluyen:
        *   **Unicidad:** La capacidad de cada PUF para generar una respuesta única.
        *   **Fiabilidad:** La consistencia de las respuestas bajo diferentes condiciones ambientales (temperatura, voltaje).
        *   **Uniformidad:** La distribución equitativa de '0's y '1's en las respuestas.
        *   **Bit-aliasing:** La probabilidad de que dos bits de respuesta sean idénticos entre diferentes PUFs.
        *   **Eficiencia de Hardware:** Medida por el consumo de recursos (LUTs, FF) en la FPGA.
3.  **Análisis de Seguridad (Ataques de Modelado):**
    *   Se utiliza el algoritmo CMA-ES (Covariance Matrix Adaptation Evolution Strategy) para evaluar la resistencia de la PRO PUF a ataques de modelado. Este algoritmo es conocido por su capacidad para modelar PUFs.
    *   Se compara el número de CRPs de entrenamiento necesarios para que CMA-ES modele exitosamente la PRO PUF con el número requerido para otras PUF RO existentes.

**Resultados Más Importantes:**

*   **Alta Unicidad y Fiabilidad:** Los experimentos en FPGAs de Xilinx demuestran que la PRO PUF logra una alta unicidad y fiabilidad, comparables o superiores a las PUF RO existentes.
*   **Eficiencia de Hardware Superior:** La PRO PUF consume significativamente menos recursos de hardware (LUTs y FF) para generar un gran número de CRPs en comparación con las PUF RO y CRO PUF convencionales. Esto se debe a la reutilización de las unidades de retardo programables.
*   **Mayor Resistencia a Ataques de Modelado:** El análisis con CMA-ES revela que la PRO PUF requiere un número sustancialmente mayor de CRPs de entrenamiento para ser modelada con éxito, lo que indica una mayor resistencia a los ataques de modelado basados en aprendizaje automático en comparación con otras variantes de PUF RO. Por ejemplo, se reporta que la PRO PUF requiere 10 veces más CRPs de entrenamiento que las CRO PUF basadas en MUX para ser modelada con éxito.
*   **Flexibilidad:** La capacidad de programar las unidades de retardo y las rutas de propagación confiere una gran flexibilidad al diseño, permitiendo la generación de diversas patrones de respuesta.

**Conclusiones:**

El trabajo propone y valida una eficiente PUF basada en osciladores de anillo (PRO PUF) que utiliza unidades de retardo programables en FPGAs. Este diseño aborda las limitaciones de las PUF RO existentes en términos de eficiencia de hardware y resistencia a ataques. La PRO PUF logra una alta unicidad, fiabilidad y uniformidad con un menor consumo de recursos, y demuestra una mayor resistencia a los ataques de modelado basados en aprendizaje automático. La clave de su éxito radica en el uso innovador de los PIPs de las FPGAs para crear unidades de retardo altamente configurables, lo que permite la generación de un amplio espacio de CRPs con una huella de hardware reducida. Este avance es significativo para la seguridad de hardware en dispositivos IoT y embebidos, donde la autenticación mutua y el almacenamiento seguro son críticos.

---

## FPGA implementation of SRAM PUFs based cryptographically secure pseudo-random number generator.pdf

El documento "FPGA implementation of SRAM PUFs based cryptographically secure pseudo-random number generator.pdf" describe el diseño e implementación de un Generador de Números Pseudoaleatorios Criptográficamente Seguro (CSPRNG) que utiliza las Funciones Físicas Inclonables (PUFs) basadas en SRAM como fuente de entropía. El sistema está diseñado para ser robusto y cumplir con los estándares de seguridad para aplicaciones criptográficas, implementado y probado en una FPGA Altera DE2.

**Puntos Clave y Contribuciones:**

1.  **CSPRNG basado en Hash y PUFs de SRAM:** El diseño integra un Generador Determinístico de Bits Aleatorios (DRBG) basado en funciones hash con un módulo de "Obtención de Entropía" (Get Entropy) que utiliza PUFs de SRAM como fuente de entropía.
2.  **Monitoreo en Tiempo Real de la Entropía:** Una contribución fundamental es la capacidad del sistema para monitorear la entropía de las semillas extraídas de las PUFs de SRAM en tiempo real. Esto aborda la vulnerabilidad de la inestabilidad de la entropía de las PUFs debido a factores externos (ruido, temperatura, voltaje), asegurando que la semilla siempre cumpla con los requisitos de seguridad.
3.  **Resiembra Periódica Dinámica:** El CSPRNG implementa un mecanismo de reseeding dinámico y periódico, una práctica recomendada para mitigar el riesgo de compromiso de la semilla o el estado interno del DRBG a lo largo del tiempo. El módulo "Get Entropy" juega un papel crucial en este proceso al proporcionar entradas de entropía adecuadas.
4.  **Resistencia a Ataques:** A diferencia de los generadores basados en Registros de Desplazamiento con Retroalimentación Lineal (LFSR) que son susceptibles a ataques de modelado y recuperación de claves, este diseño utiliza algoritmos hash y resembreado dinámico para proporcionar resistencia al rastreo y a la predicción, mejorando significativamente la seguridad.
5.  **Implementación en FPGA:** El sistema fue implementado en una FPGA Altera DE2, demostrando su viabilidad en hardware.

**Metodología Principal:**

El diseño del CSPRNG sigue la especificación NIST SP800-90A y se compone de dos módulos principales:

*   **Módulo Get Entropy:**
    *   **Fuentes de Entropía:** Utiliza el patrón de inicio (startup pattern) de las celdas SRAM como fuente de entropía. Se enfoca en las "celdas de sesgo neutro" (neutral-skewed cells), que son las más inestables y, por lo tanto, las que aportan mayor entropía, eliminando las celdas de sesgo 0 o 1 (0-skewed, 1-skewed) que son estables y no aleatorias.
    *   **Proceso de Extracción:** Se propone un método para extraer la entropía de las PUFs de SRAM. Esto implica leer los patrones de inicio múltiples veces y analizar las diferencias para identificar las celdas neutrales y el ruido inherente.
    *   **Compresión de Entropía:** Los datos brutos de entropía se comprimen para generar semillas verdaderamente aleatorias que alimentan el DRBG.
    *   **Monitoreo en Tiempo Real:** Este módulo calcula la entropía contenida en los ruidos de los patrones de inicio de SRAM en tiempo real, verificando la disponibilidad de las PUFs de SRAM y asegurando que la entropía sea suficiente.
*   **DRBG Basado en Hash:**
    *   **Algoritmo Central:** Utiliza un algoritmo hash (ej. SHA-256) como núcleo para generar secuencias pseudoaleatorias.
    *   **Reseeding Dinámico:** El DRBG puede resembrarse dinámicamente utilizando nuevas semillas proporcionadas por el módulo Get Entropy. Esto es crucial para mantener la seguridad a largo plazo y resistir ataques que podrían comprometer el estado interno del generador.

**Resultados Importantes:**

*   **Pruebas de Aleatoriedad (NIST SP800-22):** Los números pseudoaleatorios generados por el sistema pasaron todas las pruebas de aleatoriedad del conjunto de pruebas NIST SP800-22, confirmando su alta calidad estadística.
*   **Rendimiento (Throughput):** El sistema alcanzó un rendimiento de hasta 598.1 Mbps, lo que indica una eficiencia considerable para aplicaciones que requieren grandes volúmenes de números aleatorios.
*   **Monitoreo de Entropía:** Las pruebas en el módulo "Get Entropy" demostraron su capacidad para monitorear la entropía en tiempo real y asegurar que los requisitos de seguridad se cumplen. Se observó que la entropía de las PUFs de SRAM puede ser inestable en el campo debido a factores como el ruido, lo que justifica la necesidad del módulo de monitoreo.
*   **Relación entre Remanencia de Datos y Entropía:** Los autores también exploraron la relación entre la remanencia de datos en los chips SRAM y la entropía, lo que influye en el diseño del mecanismo de reseeding periódico.

**Conclusiones:**

El trabajo presenta un CSPRNG robusto y seguro basado en la implementación de PUFs de SRAM en una FPGA. Las principales conclusiones son:

*   El diseño propuesto aborda las limitaciones de los generadores de números aleatorios tradicionales y las vulnerabilidades de la entropía de las PUFs de SRAM mediante el monitoreo en tiempo real y el reseeding dinámico.
*   La combinación de un DRBG basado en hash con un módulo "Get Entropy" que monitorea la calidad de la entropía de las PUFs de SRAM proporciona una solución altamente segura para la generación de números aleatorios criptográficos.
*   La implementación en FPGA y las pruebas exitosas con la suite NIST SP800-22 demuestran la viabilidad y robustez del sistema para su aplicación en protocolos criptográficos.
*   El enfoque en las celdas de sesgo neutro de SRAM maximiza la extracción de entropía genuina.
*   Este CSPRNG ofrece una alternativa más segura a los diseños basados en LFSR, especialmente en escenarios de alta seguridad, debido a su resistencia al rastreo y a la predicción.

---

## Improved Reliability of FPGA-Based PUF Identiﬁcation Generator Design.pdf

El documento "Improved Reliability of FPGA-Based PUF Identification Generator Design" aborda los desafíos de implementar funciones físicamente inclonables (PUF) en FPGAs, específicamente la necesidad de mejorar la unicidad y la confiabilidad sin consumir recursos excesivos. Los autores, Chongyan Gu, Neil Hanley y Máire O'Neill de la Queen's University Belfast, proponen un diseño de generador de ID PUF eficiente, ligero y escalable, junto con una novedosa metodología de post-caracterización para aumentar la confiabilidad.

**Puntos Clave y Problema Abordado:**

Las PUF son primitivas de seguridad física que permiten extraer identificadores digitales únicos de dispositivos como FPGAs, explotando las variaciones de proceso inherentes a la fabricación. Sin embargo, su adopción generalizada en FPGAs se ha visto limitada por varios problemas:
1.  **Unicidad Insuficiente:** Las PUF a menudo no logran una unicidad suficiente, lo que significa que diferentes dispositivos pueden generar el mismo o un identificador muy similar. Esto se debe a que los diseñadores de microelectrónica se esfuerzan por minimizar las variaciones de proceso que las PUF explotan.
2.  **Baja Confiabilidad:** La confiabilidad es crucial para que un dispositivo pueda generar repetidamente el mismo identificador correcto con un mínimo de bits ruidosos. Las variaciones ambientales, como las fluctuaciones de temperatura y voltaje de la fuente de alimentación, afectan significativamente la confiabilidad de las PUF, causando respuestas incorrectas.
3.  **Consumo Excesivo de Recursos:** Muchas implementaciones de PUF consumen una cantidad considerable de recursos lógicos en las FPGAs, lo que las hace menos atractivas para dispositivos de bajo costo o sistemas con restricciones de recursos.
4.  **Sesgos y Aliasing de Bits:** Las arquitecturas regulares y escalables de las FPGAs pueden llevar a diseños de rutas de enrutamiento desequilibradas y capacitancias grandes, introduciendo sesgos de bits y aliasing en las respuestas de la PUF.

El objetivo principal de este trabajo es abordar estos problemas, centrándose en mejorar la confiabilidad de una PUF basada en FPGA sin requerir hardware adicional, y proporcionando un diseño compacto con buena unicidad y confiabilidad.

**Metodología Principal:**

El trabajo se basa en una PUF ID generator propuesta previamente por los mismos autores [Gu et al. 2014], que consume recursos lógicos mínimos y es escalable. La metodología principal se centra en:

1.  **Diseño de Generador de ID PUF:**
    *   La PUF se implementa como un "hard-macro" en la FPGA, asegurando un enrutamiento equilibrado y estable para una operación confiable. Esto ayuda a minimizar el sesgo estadístico y a generar identificadores bajo diferentes condiciones ambientales.
    *   El diseño es eficiente y ligero, consumiendo solo el 8.95% de los recursos de hardware de una FPGA Xilinx Spartan-6 LX9 de bajo costo y el 0.81% de una FPGA Xilinx Artix-7.

2.  **Metodología de Post-Caracterización Novedosa:**
    *   Se propone un proceso de caracterización post-implementación confiable y eficiente.
    *   **Clave:** Esta metodología no requiere recursos de hardware adicionales en la FPGA.
    *   El objetivo es mejorar la confiabilidad de la PUF al identificar y excluir los bits de respuesta menos estables o "ruidosos".
    *   Este proceso puede aplicarse de manera general a cualquier diseño de PUF basado en FPGA.
    *   La caracterización implica evaluar el comportamiento de los bits de la PUF bajo diferentes condiciones ambientales (temperatura y voltaje) para determinar su estabilidad.

3.  **Aplicación de Votación por Mayoría Temporal (Opcional):**
    *   Para una mejora adicional en la confiabilidad, se explora la aplicación de un procesamiento posterior simple de votación por mayoría temporal. Esto implica tomar múltiples lecturas de la PUF a lo largo del tiempo y determinar la respuesta mayoritaria para cada bit.

**Resultados Más Importantes:**

Los resultados experimentales demuestran mejoras significativas en la confiabilidad y buen rendimiento en otras métricas clave:

*   **Confiabilidad Mejorada:** La confiabilidad de la PUF de 128 bits, que inicialmente era del 93.93% en el trabajo anterior de los autores, se mejora a **98.74%** mediante el proceso de post-caracterización propuesto, sin requerir hardware adicional.
*   **Confiabilidad con Votación por Mayoría:** Cuando se combina con un simple procesamiento posterior de votación por mayoría temporal, la confiabilidad se eleva aún más a **99.60%**.
*   **Robustez Ambiental:** La PUF alcanza una confiabilidad cercana al 100% en un rango de temperatura ambiental de 25°C a 70°C, con una variación de ±10% en el voltaje de la fuente de alimentación, lo que demuestra una excelente robustez.
*   **Unicidad:** El diseño mejorado logra una unicidad del **45.60%**.
*   **Uniformidad:** La uniformidad de los bits de la PUF es del **50.60%** (50.54% con votación por mayoría).
*   **Bit-Aliasing:** Se reporta un valor de bit-aliasing del **56.48%** (56.58% con votación por mayoría), indicando que no hay ocurrencia de aliasing de bits problemático (un valor cercano al 50% es ideal, ya que sugiere que los bits tienen una probabilidad igual de ser 0 o 1 y no están sesgados).
*   **Eficiencia de Recursos:** Como se mencionó, el diseño es altamente eficiente en el uso de recursos, utilizando 8.95% de una Xilinx Spartan-6 LX9 y 0.81% de una Xilinx Artix-7.

**Conclusiones:**

El documento presenta un diseño de generador de ID PUF basado en FPGA que es eficiente en recursos, ligero y escalable, y lo más importante, demuestra una confiabilidad significativamente mejorada. La contribución clave es la introducción de una metodología de post-caracterización que mejora la confiabilidad de la PUF sin la necesidad de hardware adicional, un factor crítico para su adopción práctica en FPGAs. Esta metodología es generalizable a otros diseños de PUF basados en FPGA. Los resultados experimentales confirman que la PUF mejorada ofrece una excelente confiabilidad (cercana al 100% bajo variaciones ambientales), buena unicidad y uniformidad, y ausencia de aliasing de bits. Esto posiciona el diseño como una solución robusta para la generación de identificadores en aplicaciones de seguridad de hardware,

---

