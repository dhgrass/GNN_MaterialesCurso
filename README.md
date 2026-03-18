# GNN_MaterialesCurso

Materiales didacticos sobre Redes Neuronales de Grafos (GNN) con notebooks en Python para sesiones de clase practicas.

## Estructura del proyecto

- notebooks/0_GNN_Introduction.ipynb
- notebooks/1_Graph_Convolutional_Networks.ipynb
- notebooks/2_Graph_Attention_Network.ipynb
- notebooks/3_GraphSAGE.ipynb
- notebooks/8_PREFETCH_DATASETS.ipynb
- notebooks/9_BONUS_GraphRAG_Cora_CiteSeer.ipynb
- data/ (cache de datasets descargados en ejecucion)
- slides/ (material docente de apoyo)
- docs/migracion_linux.md
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

3. Abrir en VS Code

   code .

4. Seleccionar kernel en notebooks

   Python (gnn-materiales)

5. Ejecutar notebooks

   Ejecutar celdas de arriba a abajo, sin instalar paquetes dentro de celdas.

## Orden sugerido de notebooks para clase

1. notebooks/0_GNN_Introduction.ipynb (20-40 min)
2. notebooks/1_Graph_Convolutional_Networks.ipynb (60-75 min)
3. notebooks/2_Graph_Attention_Network.ipynb (50-60 min)
4. notebooks/3_GraphSAGE.ipynb (contenido extra o comparativa)
5. notebooks/8_PREFETCH_DATASETS.ipynb (5 min antes de clase)
6. notebooks/9_BONUS_GraphRAG_Cora_CiteSeer.ipynb (20-30 min cierre)

## Verificacion rapida del entorno

Linux/macOS:

.venv/bin/python -c "import torch, torch_geometric; print('OK')"

Windows (PowerShell):

.\.venv\Scripts\python.exe -c "import torch, torch_geometric; print('OK')"

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
