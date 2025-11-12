#!/bin/bash
set -e
echo "=============================="
echo "🐳 [Step 2] Build Docker Image"
echo "=============================="
docker build -t indicator-service:test .
echo "✅ Image built successfully."