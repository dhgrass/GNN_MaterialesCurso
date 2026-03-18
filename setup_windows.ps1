$ErrorActionPreference = "Stop"

Set-Location -Path $PSScriptRoot

function Get-Python310 {
    if (Get-Command py -ErrorAction SilentlyContinue) {
        try {
            $v = & py -3.10 -c "import sys; print(sys.version_info[:2])"
            if ($LASTEXITCODE -eq 0) { return "py -3.10" }
        } catch {}
    }

    if (Get-Command python -ErrorAction SilentlyContinue) {
        try {
            $version = & python -c "import sys; print(f'{sys.version_info.major}.{sys.version_info.minor}')"
            if ($LASTEXITCODE -eq 0 -and $version -eq "3.10") { return "python" }
        } catch {}
    }

    throw "Python 3.10 no encontrado. Instala Python 3.10 y vuelve a ejecutar setup_windows.ps1"
}

$pythonCmd = Get-Python310

if (-not (Test-Path .venv)) {
    if ($pythonCmd -eq "py -3.10") {
        & py -3.10 -m venv .venv
    } else {
        & python -m venv .venv
    }
}

. .\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip setuptools wheel
python -m pip install -r requirements.txt

# Optional PyG compiled extensions. If unavailable for a platform, continue.
$torchVersion = python -c "import torch; print(torch.__version__)"
$pygWheelUrl = "https://data.pyg.org/whl/torch-$torchVersion.html"

try {
    python -m pip install torch_scatter torch_sparse -f $pygWheelUrl
    Write-Host "Optional extensions installed: torch_scatter, torch_sparse"
} catch {
    Write-Warning "No se pudieron instalar torch_scatter/torch_sparse para esta plataforma."
    Write-Warning "El contenido principal de los notebooks deberia seguir funcionando."
}

python -m ipykernel install --user --name gnn-materiales --display-name "Python (gnn-materiales)"

Write-Host ""
Write-Host "Environment ready."
Write-Host "Interpreter: .venv\\Scripts\\python.exe"
Write-Host "Notebook kernel: Python (gnn-materiales)"
