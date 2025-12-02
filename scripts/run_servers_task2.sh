#!/bin/bash

echo "Запуск Server 1 на порту 8001..."
nohup python3 ../task2/server1/server1.py &

echo "Запуск Server 2 на порту 8002..."
nohup python3 ../task2/server2/server2.py &

echo "Запуск Server 3 на порту 8003..."
nohup python3 ../task2/server3/server3.py &

echo "Все три сервера запущены!"
