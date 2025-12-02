#!/bin/bash

cd ~/haproxy-hw/task1/server1
python3 -m http.server 8001 &

cd ~/haproxy-hw/task1/server2
python3 -m http.server 8002 &

echo "Servers for Task 1 started!"
