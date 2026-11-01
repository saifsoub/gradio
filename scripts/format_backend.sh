#!/bin/bash -eu

cd "$(dirname ${0})/.."

echo "Formatting the backend... Our style follows the ruff code style."
python -c "import gradio"
python -m ruff check --fix gradio client
python -m ruff format gradio client
bash scripts/type_check_backend.sh