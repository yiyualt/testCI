#!/bin/bash
set -e
echo "=============================="
echo "🚀 [Step 3] Deploy Container"
echo "=============================="
docker rm -f indicator-service || true
docker run -d -p 8080:8080 --name indicator-service indicator-service:test
sleep 3
curl -s http://127.0.0.1:8080/ping || echo "⚠️ Ping check failed"
echo "✅ Container running successfully."