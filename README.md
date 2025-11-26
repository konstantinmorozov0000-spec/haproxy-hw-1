# Домашнее задание: HAProxy и Python-сервера

В рамках домашнего задания настроены балансировщики HAProxy и тестовые Python-серверы.  
Все конфигурационные файлы вынесены в каталог `configs/`, а скрипты запуска серверов — в каталог `scripts/`.  

## Структура проекта

haproxy-hw-1/
├── configs/
│ ├── task1-haproxy.cfg
│ └── task2-haproxy.cfg
├── task1/
│ ├── server1
│ ├── server2
├── task2/
│ ├── server1.py
│ ├── server2.py
│ ├── server3.py
├── scripts/
│ ├── run_servers.sh
│ └── run_servers_task2.sh
└── README.md


---

# Задание 1 — Балансировка Round-Roby

---

# Задание 1 — Балансировка Round-Robin

### Запуск тестовых серверов
```bash
bash scripts/run_servers.sh

````

### Запуск HAProxy
```bash
sudo haproxy -f configs/task1-haproxy.cfg
```` 
### Проверка работы
```bash
curl http://127.0.0.1/
curl http://127.0.0.1/
curl http://127.0.0.1/

````


#Задание 2 - HAProxy + Python сервера

## Описание
Три Python сервера на портах 8001, 8002 и 8003.  
HAProxy балансирует HTTP-трафик по домену example.local с Weighted Round Robin:
- Server 1: вес 2
- Server 2: вес 3
- Server 3: вес 4

# Запуск тестовых серверов для задания 2
```bash

bash scripts/run_servers_task2.sh
````
# Запуск HAProxy для задания 2

```bash
sudo haproxy -f configs/task2-haproxy.cfg
````


## Проверка
- http://example.local → распределение запросов между серверами
- http://localhost → 503

### Конфигурационный файл HAProxy

- Задание 1: [configs/task1-haproxy.cfg](configs/task1-haproxy.cfg)
- Задание 2: [configs/task2-haproxy.cfg](configs/task2-haproxy.cfg)

---
