# Reporte a dirección

## Práctica 01 — Tarificación GMM CNSF 2024

**Nombre del estudiante:** Amairani Martínez Quintero 
**Fecha:** 12 de Julio 2026
**Segmento analizado:** Cartera Integral (Resto del País, Ciudad de México, Colima, Campeche)
**Entidades incluidas:** Campeche, Ciudad de México, Colima y Resto del País.

------------------------------------------------------------------------

## 1. Recomendación final

**Decisión final:** `Mantener en condiciones`

**Prima base elegida:** $30,969,396 MXN (valor global calculado)
**Referencia 99%:** $106,802,452 MXN (correspondiente al valor de riesgo extremo global proyectado en los datos)
**Probabilidad de insuficiencia:** 27.89%
**VaR99 / E[S]:** 4.47
**RS = prima elegida / VaR99:** 3.1683

**Recomendación ejecutiva en una oración:**

> 
> 
> Se recomienda adoptar la estructura tarifaria global de $30,969,396 MXN priorizando la penetración de mercado, respaldada por un ratio de solvencia de 3.17 y la implementación obligatoria de un esquema de reaseguro Stop-Loss para la transferencia efectiva de los riesgos de cola identificados.

**Condición principal para aprobar la recomendación:**

> 
>
> Validación trimestral de la siniestralidad en las 40 celdas identificadas con riesgo de selección adversa y confirmación de la capacidad de absorción del reaseguro Stop-Loss frente a escenarios de ineficiencia operativa donde el factor de gastos (G) supere el 30%.

------------------------------------------------------------------------

## 2. Suficiencia técnica

| Indicador          |        Resultado      | Lectura ejecutiva               |
|--------------------|----------------------:|---------------------------------|
| E[S]               |      $23,904,826 MXN  | Nivel de pérdida esperada       |
| Prima base elegida |      $30,969,396 MXN  | Alineada a costo técnico        |
| P(S \> prima base) |               27.89%  | Probabilidad de insuficiencia   |
| VaR95              |      $70,921,456 MXN  | Estrés moderado                 |
| VaR99              |     $106,802,452 MXN  | Estrés severo (Cola)            |
| TVaR99             |     $129,513,901 MXN  | Severidad esperada en cola      |
| PML                |.    $121,116,067 MXN  | Probable Máxima Pérdida         |
| VaR99 / E[S]       |             4.47      | Leptocurtosis elevada           |
| RS = prima / VaR99 |             3.17      | Capacidad de absorción          |

**Lectura técnica breve:**

> 
>
> El factor de cola (4.47) confirma una distribución leptocúrtica severa con alta concentración de riesgo en extremos. El Ratio de Solvencia Global de 3.17, calculado sobre la estructura de capital propuesta para el portafolio, garantiza la suficiencia técnica para absorber desviaciones catastróficas, siempre que se mitigue la probabilidad de insuficiencia inicial (27.89%) mediante la activación del esquema de reaseguro Stop-Loss

## 3. Prima base y referencia 99%

**Prima base elegida:** $30,969,396 MXN
**Criterio de elección:** `Mixto (Precio competitivo y Gestión de Riesgos)`\
**Recargo de seguridad implícito:** 14.90%

**Justificación de la prima base:**

> 
>
> La prima base fue determinada mediante un enfoque de costo medio ajustado al mercado, resultando en un volumen de $30.97 millones MXN. Este nivel maximiza nuestra competitividad estratégica (Log-Gap de -0.09) frente al benchmark. El recargo del 14.90% garantiza la absorción de volatilidades operativas ordinarias, dejando la gestión de eventos de cola (riesgo extremo) bajo la cobertura del esquema de reaseguro Stop-Loss.

**Referencia 99%:** $106,802,452 MXN

**Uso correcto de la referencia 99%:**

> Punto de anclaje para el límite de retención del reaseguro y cálculo del capital económico requerido para garantizar la solvencia del portafolio.

**Justificación de la referencia 99%:**

> 
>
> Representa el percentil 99 donde se materializa el riesgo catastrófico (PML); su uso como límite de retención es estratégico para evitar la erosión del margen operativo ante siniestros de alta severidad que superan la capacidad de retención ordinaria.


**Nota:**
>Segmentación y Granularidad del Modelo
>Para garantizar una precisión actuarial superior al estándar de mercado, el cálculo de primas y el requerimiento de capital no se realizaron de forma agregada. Se ejecutó una segmentación multidimensional (edad × entidad × sexo), permitiendo:

>Ajuste de precisión: Capturar la heterogeneidad del riesgo que los benchmarks nacionales suelen promediar.
>Identificación de nichos: Detectar celdas de alta rentabilidad y riesgos específicos (como los identificados en el segmento 40-50 años).
>Tarificación técnica: Derivar primas que reflejan la realidad demográfica del portafolio, evitando subsidios cruzados indeseados entre celdas de distinto perfil de siniestralidad.

## 4. Benchmark y posición de mercado

**Benchmark usado:** CNSF 2024 por edad × sexo\
**Supuesto de gastos o G usado:** 30.00%
**Escala usada para comparar:** Capa B — `prima_base_benchmark` y `prima_99_benchmark`

| Indicador                    |        Resultado | Lectura ejecutiva             |
|------------------------------|-----------------:|-------------------------------|
| Benchmark medio              |    $1,095.21 MXN |Referencia de mercado          |
| Brecha base                  |           -9.31% | Competitivo (Subprecio)       |
| Brecha 99%                   |          212.75% | Cobertura amplia              |
| g_port, si aplica            |           -0.098 | Ventaja estructural           |
| Celdas con selección adversa |               40 | Riesgo disperso               |

**Lectura frente al mercado:**

> 
>
> La tarifa base se posiciona 9.31% por debajo del benchmark de mercado, validando una estrategia agresiva de penetración. Esta postura competitiva requiere un monitoreo activo de las 40 celdas identificadas con riesgo de selección adversa, asegurando que la erosión técnica no comprometa la rentabilidad del portafolio.

**Advertencia metodológica:**

> La comparación contra benchmark se realiza con la Capa B (nivel granular), al ser el estándar de industria para validación de suficiencia. Se excluyen las primas de reconciliación agregada de la Capa A para evitar distorsiones de escala en la comparación competitiva.

------------------------------------------------------------------------

## 5. Gestión de cola

**Estrategia seleccionada:** `Mixto (Reaseguro y Capital)`

| Elemento                      |        Resultado | Implicación             |
|-------------------------------|-----------------:|-------------------------|
| Capital económico             | $75,833,056 MXN  | Respaldo para VaR99     |
| Attachment XL, si aplica      |$1,142,251,691MXN | Punto de transferencia  |
| Loading XL, si aplica         |          14.73%  | Factor de modificación  |
| Costo de reaseguro, si aplica |  $41,505,927 MXN | Prima de transferencia  |
| Capital residual, si aplica   | $735,073,684 MXN | Fondo de maniobra       |

**Justificación de la estrategia de cola:**

> 
>
> Dada la leptocurtosis identificada (factor de cola de 4.47), la volatilidad extrema al 99% supera la capacidad de absorción operativa. La estrategia combina la retención del riesgo hasta el PML ($121,116,067 MXN) y la transferencia del excedente mediante reaseguro Stop-Loss. Esto garantiza un Ratio de Solvencia de 3.17, permitiendo que el portafolio mantenga su solvencia incluso ante escenarios de estrés severo.

**Limitación de reaseguro:**

> 
>
> El reaseguro actúa como un dique de contención a partir del percentil 99. Su función es salvaguardar el capital ante la fatiga de colas (heavy-tails) del modelo, minimizando el impacto de la tasa de insolvencia proyectada en el 27.89% de los eventos extremos.

## 6. Riesgo comercial y selección adversa

**Celdas edad × sexo con mayor riesgo de selección adversa:**

1.  

    Segmento 40-50 años: Alta siniestralidad acumulada con desviación significativa en la frecuencia.
2.  

    Segmento de Alta Severidad (Celdas 30-35): Grupos con alta recurrencia donde el costo siniestral esperado supera la tarifa técnica base.


3.  

    Segmento de Baja Exposición: Celdas con baja densidad de siniestros, pero con Log-Gap negativo, susceptibles a volatilidad por baja significancia estadística.

**Mecanismo de selección adversa identificado:**

> 
>
> La estructura tarifaria actual, al presentar un Log-Gap negativo, genera un incentivo de selección adversa en segmentos de alta frecuencia, atrayendo riesgos con una expectativa de siniestralidad superior a la tarifa técnica.

**Riesgo comercial principal:**

> 
>
> Canibalización" del margen operativo por una estrategia de precios agresiva que, si bien captura mercado, requiere una gestión estricta de la volatilidad para evitar el agotamiento de la reserva técnica.

**Acción recomendada:**

> 
>
> Monitoreo trimestral y endurecimiento de las políticas de suscripción en segmentos específicos, aplicando ajustes paramétricos a la prima de riesgo conforme la experiencia siniestral converja con la curva ajustada.

## 7. Insight diferencial

**Tipo de insight:** `Sensibilidad a G y Selección Adversa`

**Hallazgo cuantificado:**

> 
>
> La elasticidad del margen es altamente sensible a la ineficiencia operativa: con un supuesto de G entre 25% y 40%, cualquier incremento imprevisto en la carga operativa erosiona la viabilidad técnica, situando el punto de equilibrio en un G del 30%.

**Implicación para la decisión:**

> 
>
> Mantener la estrategia de penetración, condicionada a un tight control de la siniestralidad en celdas críticas para proteger el margen ante escenarios de costos operativos crecientes.

## 8. Cierre para comité

La recomendación final es **Mantener con condiciones** porque la prima base **competitiva y penetrante**, la referencia 99% **es el ancla de nuestra solvencia**, el benchmark **confirma nuestra viabilidad comercial**, y la cola extrema debe gestionarse mediante **un contrato de reaseguro tipo Stop-Loss**.

**Mensaje final a dirección:**

> 
>
> El modelo es técnicamente robusto y suficiente. La estrategia de subprecio es una decisión consciente para maximizar la penetración de mercado, respaldada por una gestión financiera que garantiza la solvencia del portafolio ante eventos catastróficos.

> Alcance del Modelo: Granularidad y Precisión
Aunque este reporte presenta las métricas consolidadas (globales) para facilitar la dirección estratégica, el modelo actuarial fue calibrado de forma totalmente desagregada. El cálculo de primas y la proyección de siniestralidad se realizaron cruzando Edad, Entidad Federativa y Sexo, capturando la heterogeneidad real del portafolio.
Esta arquitectura nos permite asegurar que, mientras los indicadores globales (como el ratio de solvencia de 3.17) garantizan la integridad institucional, cada decisión de suscripción —especialmente en las 40 celdas identificadas con riesgo de selección adversa— tiene un respaldo estadístico granular derivado de la experiencia de siniestralidad de cada perfil demográfico específico.