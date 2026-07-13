# ============================================================
# ActuaryLab — Práctica 01
# Objeto de decisiones auditables
# Lab I · Tarificación de GMM Individual CNSF 2024
# ============================================================
# Esta plantilla está alineada con el JSON final generado por la
# versión alumno del Lab I.
#
# Regla invariable:
# Toda justificación debe poder decirse en voz alta en un comité
# técnico, sin abrir el notebook ni el código.
#
# Un campo vacío = una decisión no tomada = no se evalúa.
# ============================================================
# JSON y rúbrica cumplen funciones distintas:
# - JSON: evidencia mínima auditable y trazabilidad.
# - Rúbrica: calidad del razonamiento actuarial.
# ============================================================

# ── Objeto de decisiones auditables ─────────────────────────────────────

decisiones <- list(

  # ── S01 — Datos, calidad y sesgo ──────────────────────────────────────
  s01 = list(

    pct_faltantes = list(
      valor = NA_real_,
      justificacion = paste(
        "COMPLETAR: reportar % de registros/exposiciones excluidas o con faltantes.",
        "Debe concluir si el mecanismo es compatible con MAR/MNAR y no MCAR,",
        "usando Test de Little o evidencia equivalente. Debe cerrar con la",
        "implicación sobre prima y cola."
      )
    ),

    sesgo_impacto_prima = list(
      valor = NA_real_,
      subestimacion_media_pct = NA_real_,
      subestimacion_var_pct = NA_real_,
      justificacion = paste(
        "COMPLETAR: cuantificar impacto potencial del sesgo en E[X] y VaR99.",
        "Si el impacto en pesos se cierra hasta S04, dejar explícita la conexión",
        "entre el porcentaje estimado en S01 y la prima/pérdida agregada de S04."
      )
    ),

    limitacion_reaseguro = list(
      valor = "COMPLETAR",
      justificacion = paste(
        "COMPLETAR: indicar si la información disponible permite modelar",
        "reaseguro o si la prima debe leerse como bruta de reaseguro.",
        "Documentar límites por agregación, estructura de tratados, attachment,",
        "deducibles, coaseguros o falta de detalle por celda."
      )
    ),

    grupos_entidad = list(
      valor = list(
        "CDMX — factor confiable" = "Ciudad de México",
        "NL — factor confiable" = "Nuevo León",
        "Resto — factor neutro (1.00)" = character(0)
      ),
      criterio = "Cobertura de causas — masa estadística suficiente",
      justificacion = paste(
        "COMPLETAR: justificar por qué CDMX y NL tienen factor regional confiable",
        "y por qué el resto se mantiene con factor neutro 1.00. Explicar",
        "suficiencia de causas, estabilidad y riesgo de sobreinterpretación."
      )
    )
  ),

  # ── S02 — Frecuencia, severidad y modificaciones de póliza ───────────
  s02 = list(

    dist_frecuencia = list(
      valor = "Poisson-IG",
      justificacion = paste(
        "COMPLETAR: justificar Poisson-IG usando índice de dispersión sobre",
        "numero_de_reclamaciones. Explicar por qué Poisson simple se descarta",
        "si hay sobredispersión y cómo la frecuencia elegida alimenta S_sim."
      )
    ),

    dist_severidad = list(
      valor = "Paralogística",
      justificacion = paste(
        "COMPLETAR: justificar Paralogística con curtosis post-ponderación alta,",
        "MEF creciente, QQ-plot, AIC y jackknife. Explicar por qué Lognormal",
        "subestima cola y por qué Burr puede sobreestimar o caer en región",
        "paramétrica atípica."
      )
    ),

    advertencia_cola = list(
      valor = NA,
      justificacion = paste(
        "COMPLETAR: indicar si se activa advertencia de cola pesada y con qué",
        "evidencia: curtosis, MEF, QQ-plot, comparación contra Lognormal/Burr",
        "y estabilidad jackknife. Cerrar con consecuencia para VaR, TVaR, PML",
        "y prima."
      )
    ),

    factor_modificacion = list(
      valor = NA_real_,
      justificacion = paste(
        "COMPLETAR: documentar deducible, coaseguro, distribución usada y",
        "lectura actuarial del factor de modificación. Aclarar que mide el efecto",
        "esperado de condiciones contractuales y no sustituye la prima técnica."
      )
    ),

    paso_regla_seleccion = list(
      valor = NA_integer_,
      justificacion = paste(
        "COMPLETAR: explicar en qué paso de la regla de parsimonia se seleccionó",
        "el modelo y por qué no basta una alternativa más simple."
      )
    )
  ),

  # ── S03 — Proyección e inflación ─────────────────────────────────────
  s03 = list(

    factor_tendencia = list(
      valor = NA_real_,
      justificacion = paste(
        "COMPLETAR: indicar tasa de tendencia médica, periodo de proyección",
        "y razón técnica para proyectar severidad/costo."
      )
    ),

    costo_no_proyectar = list(
      valor = NA_real_,
      justificacion = paste(
        "COMPLETAR: cuantificar cuánto se subestima el indicador técnico o el",
        "costo agregado si no se aplica tendencia médica."
      )
    ),

    invarianza_escala = list(
      valor = NA,
      justificacion = paste(
        "COMPLETAR SI APLICA: documentar si la proyección conserva relaciones",
        "relativas por celda o si altera la escala agregada. Si no aplica, explicar",
        "brevemente por qué."
      )
    )
  ),

  # ── S04 — Prima, riesgo y gestión de cola ────────────────────────────
  s04 = list(

    prima_elegida = list(
      valor = NA_real_,
      justificacion = paste(
        "COMPLETAR: reportar la prima base elegida y conectarla con E[S],",
        "P(S > prima), recargo de seguridad, suficiencia y riesgo de cola."
      )
    ),

    prima_99 = list(
      valor = NA_real_,
      justificacion = paste(
        "COMPLETAR: reportar la referencia 99% como nivel extremo de suficiencia.",
        "Aclarar explícitamente que no se impone como precio comercial automático."
      )
    ),

    enfoque = list(
      valor = "COMPLETAR",
      justificacion = paste(
        "COMPLETAR: describir el enfoque de S04. Ejemplo: prima base elegida",
        "más referencia 99% como capa de cola gestionada con capital, reaseguro",
        "o condiciones de producto."
      )
    ),

    recargo_seguridad = list(
      valor = NA_real_,
      justificacion = paste(
        "COMPLETAR: explicar el tamaño del recargo, su fórmula y su relación",
        "con suficiencia, cola y benchmark."
      )
    ),

    n_montecarlo = list(
      valor = NA_real_,
      justificacion = paste(
        "COMPLETAR: documentar número de simulaciones, criterio de precisión",
        "y limitaciones de convergencia para VaR/TVaR si aplica."
      )
    ),

    pi_insuficiencia = list(
      valor = NA_real_,
      justificacion = paste(
        "COMPLETAR: interpretar P(S > prima_elegida) bajo S_sim y compararla",
        "con escenarios alternativos si corresponde."
      )
    ),

    cola = list(
      valor = "COMPLETAR",
      justificacion = paste(
        "COMPLETAR: indicar si la cola se gestiona con precio, capital, reaseguro,",
        "condiciones de producto o estrategia mixta. Incluir lectura de VaR, TVaR",
        "y PML en el análisis o en campos auxiliares si se desea."
      )
    ),

    capital_economico = list(
      valor = NA_real_,
      justificacion = paste(
        "COMPLETAR: cuantificar la capa de capital o margen contra cola y explicar",
        "si se cubre con prima, capital, reaseguro o condiciones."
      )
    ),

    limitacion_reaseguro = list(
      valor = "COMPLETAR",
      justificacion = paste(
        "COMPLETAR: documentar si la simulación permite evaluar reaseguro con",
        "suficiente detalle. Si se usa una aproximación XL, indicar attachment,",
        "loading y limitaciones por escala o agregación."
      )
    ),

    frontera_eficiente = list(
      valor = list(),
      sensibilidad_loading = list(),
      justificacion = paste(
        "COMPLETAR SI APLICA: documentar frontera eficiente entre retención,",
        "reaseguro y prima. Si no se evaluó, justificar brevemente."
      )
    ),

    tabla_prima_recomendada = list(),

    escala_prima = list(
      valor = "doble_capa_s04_s05",
      justificacion = paste(
        "COMPLETAR: explicar que S04 conserva una Capa A de reconciliación",
        "agregada para prima de cartera y una Capa B comparable por asegurado/celda",
        "para benchmark. S05 debe usar prima_base_benchmark y prima_99_benchmark",
        "contra benchmark_mid; no debe usar prima_recomendada_base ni prima_total_99",
        "para comparar mercado."
      )
    ),

    decision_bajo_presion = list(
      valor = "COMPLETAR",
      justificacion = paste(
        "COMPLETAR: explicar qué decisión se tomaría si dirección presiona por",
        "bajar prima o por no reconocer la cola: firmo, no firmo o firmo con",
        "condiciones."
      )
    ),

    n_bootstrap = list(
      n_interno = list(
        valor = NA_real_,
        justificacion = paste(
          "COMPLETAR SI APLICA: documentar n interno para bootstrap, criterio",
          "de estabilidad y limitaciones."
        )
      ),
      B = list(
        valor = NA_real_,
        justificacion = paste(
          "COMPLETAR SI APLICA: documentar número de iteraciones bootstrap,",
          "criterio de estabilidad y limitaciones."
        )
      )
    ),

    prima_recomendada = list(
      enfoque = "COMPLETAR",
      enfoque_agregado = paste(
        "COMPLETAR: Capa A — reconciliación agregada. Debe usar",
        "prima_recomendada_base, prima_total_99, prima_recomendada_base_agregada",
        "y prima_total_99_agregada."
      ),
      enfoque_benchmark = paste(
        "COMPLETAR: Capa B — comparabilidad contra benchmark. Debe usar",
        "prima_base_benchmark, prima_99_benchmark, extraprima_99_benchmark",
        "y ratio_99_base_benchmark."
      ),
      prima_elegida_global = NA_real_,
      ES_sim = NA_real_,
      factor_base_s04 = NA_real_,
      recargo_implicito_base = NA_real_,
      factor_99_s04 = NA_real_,
      justificacion = paste(
        "COMPLETAR: cierre de S04. Debe explicar prima base elegida, referencia",
        "99%, distribución por celda y separación Capa A/Capa B."
      )
    )
  ),

  # ── S05 — Benchmark y estrategia ─────────────────────────────────────
  s05 = list(

    IS_medio_proy = list(
      valor = NA_real_,
      justificacion = paste(
        "COMPLETAR: reportar el índice de siniestralidad medio proyectado o",
        "indicador equivalente usado para juzgar suficiencia técnica."
      )
    ),

    CC = list(
      valor = NA_real_,
      justificacion = paste(
        "COMPLETAR: reportar CC. En el Lab final se interpreta como cobertura",
        "de cola VaR99 / E[S], salvo que el alumno defina otro indicador y lo",
        "justifique explícitamente."
      )
    ),

    RS = list(
      valor = NA_real_,
      justificacion = paste(
        "COMPLETAR: reportar RS = prima elegida / VaR99 e interpretar qué",
        "proporción del VaR99 queda cubierta por la prima base elegida."
      )
    ),

    g_port = list(
      valor = NA_real_,
      justificacion = paste(
        "COMPLETAR: interpretar el log-gap ponderado de cartera o brecha",
        "equivalente frente al benchmark CNSF."
      )
    ),

    celdas_sel_adversa = list(
      valor = NA_real_,
      justificacion = paste(
        "COMPLETAR: reportar cuántas celdas edad x sexo presentan riesgo de",
        "selección adversa o listar las celdas si el análisis lo requiere."
      )
    ),

    benchmark = list(
      valor = "COMPLETAR",
      justificacion = paste(
        "COMPLETAR: documentar construcción del benchmark CNSF por edad x sexo,",
        "supuestos de gastos y advertir que no es cotización individual ni tarifa",
        "comercial final."
      )
    ),

    escala_benchmark = list(
      valor = "benchmark_en_escala_comparable_por_asegurado_celda",
      justificacion = paste(
        "COMPLETAR: explicar que la comparación contra benchmark_mid se realiza",
        "usando la Capa B de S04: prima_base_benchmark y prima_99_benchmark.",
        "No usar primas de reconciliación agregada para comparar mercado."
      )
    ),

    brecha_base = list(
      valor = NA_real_,
      justificacion = paste(
        "COMPLETAR: interpretar la brecha base contra benchmark_mid usando",
        "prima_base_benchmark de Capa B."
      )
    ),

    brecha_99 = list(
      valor = NA_real_,
      justificacion = paste(
        "COMPLETAR: interpretar la brecha de la referencia 99% contra benchmark_mid",
        "usando prima_99_benchmark de Capa B. Debe aclararse que 99% no es precio",
        "automático."
      )
    ),

    decision_final = list(
      valor = "COMPLETAR",
      justificacion = paste(
        "COMPLETAR: cerrar como comité. La decisión debe integrar suficiencia",
        "técnica, cola, benchmark, capital/reaseguro y riesgo comercial.",
        "Opciones esperadas: subo, bajo, mantengo, mantengo con condiciones."
      )
    ),

    sensibilidad_G = list(
      valor = list(),
      justificacion = paste(
        "COMPLETAR SI APLICA: documentar sensibilidad del benchmark a supuestos",
        "de gastos G y cómo cambia la decisión estratégica."
      )
    )
  )
)

# ── Verificación de completitud ─────────────────────────────────────────

.es_vacio <- function(x) {
  if (is.null(x)) return(TRUE)
  if (length(x) == 0) return(TRUE)
  if (length(x) == 1 && is.logical(x) && is.na(x)) return(TRUE)
  if (length(x) == 1 && is.numeric(x) && is.na(x)) return(TRUE)
  if (length(x) == 1 && is.character(x) && trimws(x) == "") return(TRUE)
  if (length(x) == 1 && identical(x, "COMPLETAR")) return(TRUE)
  if (length(x) == 1 && is.character(x) && grepl("^COMPLETAR", x)) return(TRUE)
  FALSE
}

verificar_decisiones <- function(d = decisiones) {

  campos_pendientes <- character(0)
  campos_completos <- 0L

  revisar <- function(obj, path = "decisiones") {
    if (is.list(obj) && !is.data.frame(obj)) {
      if (length(obj) == 0) {
        campos_pendientes <<- c(campos_pendientes, path)
      } else {
        for (nm in names(obj)) {
          revisar(obj[[nm]], paste0(path, "$", nm))
        }
      }
    } else {
      if (.es_vacio(obj)) {
        campos_pendientes <<- c(campos_pendientes, path)
      } else {
        campos_completos <<- campos_completos + 1L
      }
    }
  }

  revisar(d)

  cat("══ VERIFICACIÓN DE DECISIONES ══\n\n")
  cat(sprintf("Campos completos  : %d\n", campos_completos))
  cat(sprintf("Campos pendientes : %d\n\n", length(campos_pendientes)))

  if (length(campos_pendientes) == 0) {
    cat("Todas las decisiones están completas y justificadas.\n")
    cat("Recuerda: cada justificación debe poder decirse en comité técnico.\n")
  } else {
    cat("Campos pendientes de completar:\n")
    for (campo in campos_pendientes) {
      cat(sprintf("  - %s\n", campo))
    }
    cat("\nUn campo vacío = una decisión no tomada = no se evalúa.\n")
  }

  invisible(list(
    completos = campos_completos,
    pendientes = campos_pendientes
  ))
}

# ── Exportación sugerida a JSON ─────────────────────────────────────────

exportar_decisiones_json <- function(
  d = decisiones,
  path = "actuarylab-decisiones-NOMBRE+APELLIDO-r.json"
) {
  if (!requireNamespace("jsonlite", quietly = TRUE)) {
    stop("Instala jsonlite para exportar el objeto decisiones a JSON.")
  }

  jsonlite::write_json(
    d,
    path = path,
    pretty = TRUE,
    auto_unbox = TRUE,
    null = "null"
  )

  message("JSON exportado en: ", path)
  invisible(path)
}
