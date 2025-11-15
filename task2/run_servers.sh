#!/bin/bash

cd ~/haproxy-hw/task2/server1
python3 -m http.server 8101 &

cd ~/haproxy-hw/task2/server2
python3 -m http.server 8102 &

cd ~/haproxy-hw/task2/server3
python3 -m http.server 8103 &

echo "Servers for Task 2 started!"
