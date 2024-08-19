#!/bin/bash
chmod ugo+w /home/ubuntu/uvicorn.log
python3.12 -m venv /home/ubuntu/venv
source /home/ubuntu/venv/bin/activate
pip3.12 install -r /home/ubuntu/requirements.txt
cd /home/ubuntu/
nohup uvicorn app.main:app --host localhost --port 8000 --reload > /home/ubuntu/uvicorn.log 2>&1 &
sleep 2