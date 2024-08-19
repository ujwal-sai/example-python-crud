#!/bin/bash
PID=$(ps aux | grep 'uvicorn app.main:app' | grep -v grep | awk '{print $2}')
if [ -n "$PID" ]; then
  kill $PID
  echo "Stopped uvicorn process with PID $PID"
else
  echo "No uvicorn process found"
fi
