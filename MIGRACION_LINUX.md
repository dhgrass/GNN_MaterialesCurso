# Migracion Windows -> Linux (GNN_Materiales)

## Diagnostico encontrado

1. El entorno .venv original era de Windows (Lib/, Scripts/) y no se puede ejecutar en Linux.
2. No existia un archivo de dependencias reproducible (requirements*.txt o environment.yml).
3. Los notebooks usan paquetes de GNN que incluyen extensiones compiladas (torch_scatter, torch_sparse), por lo que requieren wheels compatibles con la version de torch.

## Estado aplicado

- .venv de Windows respaldado como .venv_windows_backup_YYYYMMDD_HHMMSS.
- Nuevo .venv Linux creado con Python 3.10.
- Dependencias instaladas y verificadas para imports de notebooks.
- Kernel Jupyter registrado como Python (gnn-materiales-linux).

## Setup rapido (Linux)

Ejecuta:

./setup_linux.sh

Si el script termina bien:

- Interprete en VS Code: .venv/bin/python
- Kernel de notebooks: Python (gnn-materiales-linux)

## Verificacion manual minima

Ejecuta:

.venv/bin/python -c "import torch, torch_geometric, torch_scatter, torch_sparse; print('OK')"

## Nota sobre notebooks

Algunos notebooks contienen celdas con !pip install pensadas para ejecucion interactiva (tipo Colab). Con el entorno ya preparado, normalmente puedes omitir esas celdas para evitar reinstalaciones innecesarias.
