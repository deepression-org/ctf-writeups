#!/bin/bash
timeout 180 python3 -u ./pow.py
if [ $? -ne 0 ]; then
    echo 'pow failed!'
    exit 1
fi

timeout 60 python3 -u server.py

