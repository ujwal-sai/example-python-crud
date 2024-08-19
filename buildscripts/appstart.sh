#!/bin/bash
chmod ugo+w /home/ubuntu/uvicorn.log
source /home/ubuntu/venv/bin/activate && nohup uvicorn app.main:app --host localhost --port 8000 --reload > uvicorn.log 2>&1 &
sleep 2