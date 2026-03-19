# Inicio rapido para estudiantes

Este archivo es la ruta corta para usar el proyecto sin perderse.

## 1) Clonar el repositorio

```bash
git clone <URL_DEL_REPO>
cd GNN_MaterialesCurso
```

## 2) Instalar entorno

### Linux

```bash
./setup_linux.sh
```

### Windows (PowerShell)

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\setup_windows.ps1
```

Que significa este comando en Windows:

1. Set-ExecutionPolicy con Scope Process solo habilita scripts en esa terminal actual.
2. No cambia la politica de todo el sistema de forma permanente.
3. Al cerrar la terminal, ese permiso temporal se pierde.

Que hace el setup (Linux y Windows):

1. Crea la carpeta .venv si no existe.
2. Instala dependencias del proyecto.
3. Registra kernel de notebooks con nombre Python (gnn-materiales).

## 3) Abrir en VS Code y elegir kernel

1. Abrir carpeta del proyecto en VS Code.
2. Abrir cualquier notebook.
3. Seleccionar kernel: Python (gnn-materiales).

Si no aparece ese nombre:

1. Reiniciar VS Code o recargar ventana.
2. Seleccionar primero el interprete de .venv.
3. Volver al notebook y escoger el kernel de nuevo.

## 4) Ejecutar prefetch de datasets (una vez)

1. Abrir notebooks/8_PREFETCH_DATASETS.ipynb.
2. Ejecutar todas las celdas.
3. Confirmar que Cora y CiteSeer quedan cacheados.

## 5) Orden recomendado de trabajo

0. notebooks/8_PREFETCH_DATASETS.ipynb (solo una vez al inicio)
1. notebooks/0_GNN_Introduction.ipynb
2. notebooks/1_Graph_Convolutional_Networks.ipynb
3. notebooks/2_Graph_Attention_Network.ipynb
4. notebooks/3_GraphSAGE.ipynb
5. notebooks/6_PRACTICA_GNN_30MIN_STUDENT.ipynb
6. notebooks/7_PRACTICA_GraphRAG_LIGHT_STUDENT.ipynb (opcional, version corta)
7. notebooks/9_BONUS_GraphRAG_Cora_CiteSeer.ipynb (version completa)

Para evitar confusion:

1. El notebook 8 es solo preparacion tecnica de datos, no contenido teorico.
2. El notebook 7 es practica corta para estudiantes.
3. El notebook 9 es bonus de cierre con pipeline mas completo.

## 6) Regla simple para evitar errores

1. Ejecutar las celdas de arriba hacia abajo.
2. No instalar paquetes dentro de notebooks.
3. Si algo falla, reiniciar kernel y ejecutar de nuevo desde la primera celda.
