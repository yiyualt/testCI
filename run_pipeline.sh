#!/bin/bash
set -e

trap 'echo "❌ Pipeline failed at: $BASH_COMMAND"; exit 1' ERR

echo "======================================"
echo "🔧 Starting Local CI/CD Simulation ..."
echo "======================================"

bash .local_steps/codecheck.sh
bash .local_steps/build.sh
bash .local_steps/deploy.sh

echo "✅ Pipeline completed successfully!"