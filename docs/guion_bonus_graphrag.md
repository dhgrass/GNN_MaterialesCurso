# Guion de Clase: BONUS GraphRAG (20-30 min)

## Objetivo de cierre

Mostrar que la arquitectura GNN cambia los embeddings, y eso cambia el retrieval y el contexto expandido en GraphRAG.

## Preparacion previa (antes de clase)

1. Ejecutar `notebooks/8_PREFETCH_DATASETS.ipynb`.
2. Confirmar que Cora y CiteSeer quedan en cache local.
3. Abrir `notebooks/9_BONUS_GraphRAG_Cora_CiteSeer.ipynb` y verificar kernel `Python (gnn-materiales)`.

## Minuto a minuto

### Min 0-2: Contexto y objetivo

- Mensaje docente: "Hoy no solo comparamos accuracy. Comparamos calidad de retrieval en un flujo GraphRAG."
- Mostrar celda 1 (introduccion) y celda 2 (setup).

### Min 2-4: Carga robusta de dataset

- Ejecutar celdas 3 a 5.
- Mostrar salida de dataset activo (Cora o CiteSeer) y stats (`nodes`, `edges`, `classes`).
- Mensaje docente: "Plan A es Cora. Si falla, Plan B es CiteSeer sin romper la demo."

### Min 4-12: Entrenamiento de GCN/GAT/GraphSAGE

- Ejecutar celdas 6 a 8.
- Mostrar tabla `metrics_df`.
- Resaltar:

1. `test_acc`
2. `train_time_s`
3. trade-off precision/coste

### Min 12-15: Definir query evaluable

- Ejecutar celdas 9 y 10.
- Explicar que `target_class` define un "concepto" en embedding space.
- Mensaje docente: "Esto evita subjetividad y nos permite medir retrieval con Hits@K."

### Min 15-20: Retrieval + expansion GraphRAG

- Ejecutar celdas 11 a 13.
- Mostrar `retrieval_df` y la tabla top-k por modelo.
- Resaltar:

1. `hits@k`
2. `purity_expanded`
3. `query_latency_ms`

### Min 20-25: Visualizacion del subgrafo

- Ejecutar celdas 14 y 15.
- Comparar las 3 figuras:

1. color por clase
2. tamano por score
3. densidad/conectividad del contexto expandido

### Min 25-28: Cierre estructurado

- Ejecutar celdas 16 y 17.
- Mostrar tabla final `summary_df` y mensaje interpretativo.
- Mensaje docente: "GraphRAG = retrieval + expansion estructural. El LLM no es obligatorio para demostrar valor."

### Min 28-30: Opcional LLM

- Mostrar celdas 18 y 19 (sin activar por defecto).
- Si hay tiempo y entorno estable, explicar como activar `USE_LLM=True`.

## Mensajes clave para alumnado

1. Accuracy no cuenta toda la historia en pipelines RAG sobre grafos.
2. Cambiar arquitectura cambia geometria del embedding y cambia retrieval.
3. Expansion por vecinos aporta contexto, pero tambien puede introducir ruido.
4. Las metricas de retrieval y pureza complementan la metrica clasica de clasificacion.

## Plan de contingencia en vivo

1. Si Cora falla: continuar con CiteSeer (fallback automatico).
2. Si GPU inestable: ejecutar con `GNN_FORCE_CPU=1`.
3. Si tiempo corto: reducir `MAX_EPOCHS` y mantener solo visualizacion de 2 modelos.
