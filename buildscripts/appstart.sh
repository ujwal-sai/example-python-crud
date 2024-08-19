#!/bin/bash
chmod ugo+w /home/ubuntu/uvicorn.log
python3.12 -m venv venv
source venv/bin/activate
pip3.12 install -r requirements.txt
nohup uvicorn app.main:app --host localhost --port 8000 --reload > uvicorn.log 2>&1 &
sleep 2