# Задание 1 — Round-Robin L4

## Проверка работы HAProxy

### Скриншот вывода curl:
![Curl Round-Robin](screenshots/curl_task1.png)

### Скриншот состояния HAProxy:
![HAProxy Status](screenshots/status_haproxy_extra.png)

### Конфигурационный файл HAProxy:
![HAProxy Config](screenshots/haproxy_cfg.png)

# Задание 2 - HAProxy + Python сервера

## Описание
Три Python сервера на портах 8001, 8002 и 8003.  
HAProxy балансирует HTTP-трафик по домену example.local с Weighted Round Robin:
- Server 1: вес 2
- Server 2: вес 3
- Server 3: вес 4

## Запуск
1. ./run_servers.sh
2. sudo haproxy -f haproxy.cfg

## Проверка
- http://example.local → распределение запросов между серверами
- http://localhost → 503

### Скриншот состояния Python-серверов:
![Python Servers Running](screenshots/python_servers_running.png)

### Скриншот конфигурационного файла HAProxy:
![HAProxy Config](screenshots/haproxy_config.png)

### Скриншот перенаправления запросов на разные серверы (example.local):
![Server Requests example.local](screenshots/server_requests_example_local.png)

### Скриншот проверки запросов на другой домен:
![Server Requests Other Domain](screenshots/server_requests_other_domain.png)

