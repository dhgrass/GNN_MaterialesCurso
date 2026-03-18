# GNN_Materiales

Materiales didacticos sobre Redes Neuronales de Grafos (GNN) con notebooks en Python.

## Contenido del proyecto

- 0_GNN_Introduction.ipynb
- 1_Graph_Convolutional_Networks.ipynb
- 2_Graph_Attention_Network.ipynb
- 3_GraphSAGE.ipynb
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
   cd GNN_Materiales

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

   Ejecutar celdas de arriba a abajo.

## Verificacion rapida del entorno

Linux/macOS:

.venv/bin/python -c "import torch, torch_geometric; print('OK')"

Windows (PowerShell):

.\.venv\Scripts\python.exe -c "import torch, torch_geometric; print('OK')"

Comprobacion opcional de extensiones compiladas:

.venv/bin/python -c "import importlib.util; print('torch_scatter', importlib.util.find_spec('torch_scatter') is not None); print('torch_sparse', importlib.util.find_spec('torch_sparse') is not None)"

## Nota sobre datasets

Los directorios CiteSeer/ y Pubmed/ son datos descargados automaticamente por los notebooks. No se suben al repositorio; se regeneran al ejecutar los notebooks.

## Por que existe la carpeta .vscode

.vscode guarda preferencias locales del editor (por ejemplo, que interprete Python usar). Es util en local, pero no necesaria para estudiantes, por eso se excluye en .gitignore.

## Publicar en GitHub (docente)

1. Inicializar git (una sola vez)

   git init

2. Agregar archivos

   git add .

3. Primer commit

   git commit -m "Initial commit: GNN materials"

4. Crear repositorio vacio en GitHub (sin README, sin .gitignore)

5. Conectar remoto y subir

   git remote add origin <URL_GITHUB>
   git branch -M main
   git push -u origin main

## Recomendaciones para clase

- Compartir este README con el alumnado.
- Pedir Python 3.10 para evitar diferencias de versiones.
- Si un estudiante no puede instalar torch_scatter/torch_sparse, puede continuar con la mayoria del contenido.
