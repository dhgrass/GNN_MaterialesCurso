# GNN_MaterialesCurso

Materiales didacticos sobre Redes Neuronales de Grafos (GNN) con notebooks en Python para sesiones de clase practicas.

## Punto de entrada rapido

- Si eres estudiante: START_HERE_STUDENTS.md
- Si eres docente: docs/orientaciones_practicas_gnn_graphrag.md y docs/guion_bonus_graphrag.md

## Estructura del proyecto

- notebooks/0_GNN_Introduction.ipynb
- notebooks/1_Graph_Convolutional_Networks.ipynb
- notebooks/2_Graph_Attention_Network.ipynb
- notebooks/3_GraphSAGE.ipynb
- notebooks/6_PRACTICA_GNN_30MIN_STUDENT.ipynb
- notebooks/7_PRACTICA_GraphRAG_LIGHT_STUDENT.ipynb
- notebooks/8_PREFETCH_DATASETS.ipynb
- notebooks/9_BONUS_GraphRAG_Cora_CiteSeer.ipynb
- START_HERE_STUDENTS.md
- data/ (cache de datasets descargados en ejecucion)
- slides/ (material docente de apoyo)
- docs/migracion_linux.md
- docs/guion_bonus_graphrag.md
- docs/orientaciones_practicas_gnn_graphrag.md
- setup_linux.sh
- setup_windows.ps1
- requirements.txt

## Requisitos

- Linux o Windows (PowerShell)
- Python 3.10 instalado
- Git

## Instalacion paso a paso (estudiantes)

1. Clonar repositorio

   git clone <URL_DEL_REPO>
   cd GNN_MaterialesCurso

2. Crear entorno e instalar dependencias (segun sistema)

   Linux:

   ./setup_linux.sh

   Windows (PowerShell):

   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   .\setup_windows.ps1

   Nota importante:

   - El comando Set-ExecutionPolicy con Scope Process solo aplica a la terminal actual.
   - setup_linux.sh y setup_windows.ps1 crean la carpeta .venv si no existe.
   - Ambos scripts registran el kernel de Jupyter con nombre Python (gnn-materiales).

3. Abrir en VS Code

   code .

4. Seleccionar kernel en notebooks

   Python (gnn-materiales)

   Si no aparece de inmediato en VS Code, reinicia VS Code o recarga la ventana.
   Como alternativa, selecciona el interprete dentro de .venv y vuelve a abrir el notebook.

5. Ejecutar notebooks

   Ejecutar celdas de arriba a abajo, sin instalar paquetes dentro de celdas.

## Orden sugerido de notebooks para clase

0. notebooks/8_PREFETCH_DATASETS.ipynb (5 min una sola vez, al inicio)
1. notebooks/0_GNN_Introduction.ipynb (20-40 min)
2. notebooks/1_Graph_Convolutional_Networks.ipynb (60-75 min)
3. notebooks/2_Graph_Attention_Network.ipynb (50-60 min)
4. notebooks/3_GraphSAGE.ipynb (contenido extra o comparativa)
5. notebooks/6_PRACTICA_GNN_30MIN_STUDENT.ipynb (30 min practica guiada)
6. notebooks/7_PRACTICA_GraphRAG_LIGHT_STUDENT.ipynb (10-15 min practica opcional y puente al bonus)
7. notebooks/9_BONUS_GraphRAG_Cora_CiteSeer.ipynb (20-30 min cierre)

## Relacion entre 7, 8 y 9

- notebooks/8_PREFETCH_DATASETS.ipynb no es contenido de clase: solo prepara datasets para evitar fallos de red.
- notebooks/7_PRACTICA_GraphRAG_LIGHT_STUDENT.ipynb es una practica corta para alumnado (version simplificada).
- notebooks/9_BONUS_GraphRAG_Cora_CiteSeer.ipynb es la demo completa de cierre (version extendida).

## Nota sobre notebooks de soluciones

Los notebooks con soluciones del profesor NO se publican en este repositorio.
En la version para estudiantes solo se incluyen notebooks tipo *STUDENT.

## Verificacion rapida del entorno

Linux/macOS:

.venv/bin/python -c "import torch, torch_geometric; print('OK')"

Windows (PowerShell):

.\.venv\Scripts\python.exe -c "import torch, torch_geometric; print('OK')"

Si estos comandos funcionan, la .venv esta creada correctamente y el kernel deberia quedar disponible.

Comprobacion opcional de extensiones compiladas:

.venv/bin/python -c "import importlib.util; print('torch_scatter', importlib.util.find_spec('torch_scatter') is not None); print('torch_sparse', importlib.util.find_spec('torch_sparse') is not None)"

## Nota sobre datasets

Los datasets se descargan en la carpeta data/ durante la ejecucion. Esta carpeta esta ignorada por git para mantener el repositorio ligero.

Para blindar la clase frente a problemas de red:

- Ejecutar notebooks/8_PREFETCH_DATASETS.ipynb antes de la sesion.
- El bonus intenta Cora (Plan A) y, si falla, usa CiteSeer (Plan B).

## Politica de notebooks en git

- No incluir celdas de instalacion con pip.
- Evitar guardar outputs pesados (imagenes/video embebidos) salvo cuando sean estrictamente necesarios.

## Recomendaciones para clase

- Compartir este README con el alumnado antes de la sesion.
- Pedir Python 3.10 para evitar diferencias de versiones.
- Si un estudiante no puede instalar torch_scatter/torch_sparse, puede continuar con la mayoria del contenido.
- Para el cierre, usar docs/guion_bonus_graphrag.md como guia minuto a minuto.
- Para practicas guiadas, usar docs/orientaciones_practicas_gnn_graphrag.md.
