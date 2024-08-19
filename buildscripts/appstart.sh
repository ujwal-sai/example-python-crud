#!/bin/bash
cd .. && source venv/bin/activate && nohup uvicorn app.main:app --host localhost --port 8000 --reload > uvicorn.log 2>&1 &
sleep 2