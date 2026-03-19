# Orientaciones: Practicas de Aula (GNN + GraphRAG)

## Objetivo general

Consolidar lo visto en clase mediante dos practicas guiadas y breves, centradas en comparacion de arquitecturas y en retrieval sobre grafos.

## Materiales nuevos

1. notebooks/6_PRACTICA_GNN_30MIN_STUDENT.ipynb
2. notebooks/6_PRACTICA_GNN_30MIN_SOLUTIONS.ipynb
3. notebooks/7_PRACTICA_GraphRAG_LIGHT_STUDENT.ipynb
4. notebooks/7_PRACTICA_GraphRAG_LIGHT_SOLUTIONS.ipynb

## Practica 1 (30 min): comparativa de arquitecturas

- Foco: GCN vs GAT vs GraphSAGE full-batch.
- Entregables: tabla comparativa, mini ablation y reflexion corta.
- TODOs: exactamente 3 (build_model, train_one_run, run_experiment).

## Practica 2 (10-15 min): GraphRAG-light

- Foco: query en embedding space, seed retrieval, expansion 1-hop y subgrafo.
- Entregables: metricas de retrieval + visualizacion + reflexion.
- TODOs: exactamente 3 (centroide, top-k coseno, expansion 1-hop).

## Recomendaciones docentes

1. Ejecutar notebooks de soluciones en segundo plano para tener plan de rescate.
2. Si hay poco tiempo, mantener max_epochs de las practicas tal como estan.
3. Enfatizar comparacion justa: mismo dataset, mismo split, mismo protocolo.
4. En GraphRAG-light, centrar explicacion en retrieval + expansion, no en LLM.

## Evaluacion rapida sugerida

1. Correctitud tecnica: checkpoints y asserts superados.
2. Analisis: interpretacion de trade-offs accuracy vs tiempo.
3. Comprension conceptual: efecto de expansion sobre pureza/ruido.

## Contingencia

1. Si Cora no carga, ambos notebooks ya tienen fallback a CiteSeer.
2. Si GPU falla, ejecutar en CPU (los tiempos siguen siendo clase-friendly).
3. Si se atoran con TODOs, abrir la version SOLUTIONS para destrabe.
