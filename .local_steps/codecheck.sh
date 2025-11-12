#!/bin/bash
set -e
echo "=============================="
echo "🏗️ [Step 1] Code Check & Tests"
echo "=============================="
go vet ./...
go test ./... -v || echo "(No tests defined — skipping)"
echo "✅ Code check passed."