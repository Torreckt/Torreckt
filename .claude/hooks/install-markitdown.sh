#!/bin/bash
# Install MarkItDown (https://github.com/microsoft/markitdown) at session start.
set -euo pipefail

if command -v markitdown >/dev/null 2>&1; then
  exit 0
fi

pip install --quiet 'markitdown[all]' >&2
