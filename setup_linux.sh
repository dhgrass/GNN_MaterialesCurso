#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$PROJECT_DIR"

if ! command -v python3.10 >/dev/null 2>&1; then
  echo "Error: Python 3.10 no encontrado en PATH"
  echo "Instala Python 3.10 y vuelve a ejecutar este script."
  exit 1
fi

if [[ -d .venv ]] && [[ -d .venv/Scripts ]]; then
  backup_name=".venv_windows_backup_$(date +%Y%m%d_%H%M%S)"
  mv .venv "$backup_name"
  echo "Windows virtualenv backed up as: $backup_name"
fi

if [[ ! -d .venv ]]; then
  python3.10 -m venv .venv
fi

source .venv/bin/activate
python -m pip install --upgrade pip setuptools wheel
python -m pip install -r requirements.txt

# Optional PyG compiled extensions. If unavailable for a platform, continue.
TORCH_VERSION="$(python -c 'import torch; print(torch.__version__)')"
PYG_WHEEL_URL="https://data.pyg.org/whl/torch-${TORCH_VERSION}.html"

if python -m pip install torch_scatter torch_sparse -f "$PYG_WHEEL_URL"; then
  echo "Optional extensions installed: torch_scatter, torch_sparse"
else
  echo "Warning: no se pudieron instalar torch_scatter/torch_sparse para esta plataforma."
  echo "Warning: el contenido principal de los notebooks deberia seguir funcionando."
fi

python -m ipykernel install --user --name gnn-materiales --display-name "Python (gnn-materiales)"

echo
echo "Environment ready."
echo "Use this interpreter in VS Code: $PROJECT_DIR/.venv/bin/python"
echo "Use this kernel in notebooks: Python (gnn-materiales)"
