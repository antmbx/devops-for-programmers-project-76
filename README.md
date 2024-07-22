### Hexlet tests and linter status:
[![Actions Status](https://github.com/antmbx/devops-for-programmers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/antmbx/devops-for-programmers-project-76/actions)



> Серверы в облаке не заказывал.
> Развернул дома 4 VM
> 
> 1. Load balancer (haproxy) + reverse proxy (nginx)
> 2. БД PostgreSQL
> 3. Веб-сервер 1
> 4. Веб-сервер 2
> 
> На роутере настроил маппинг портов на Revers Proxy, он создает TLS с клиентом и кидает на haroxy
> haproxy балансирует в режиме *leastconn*


This is a simple application REDMINE

**path to Example:** 
- HTTPS: https://hexlet.azxs.ru/
- HTTP: http://hexlet.azxs.ru/


## Описание


### Переменные

Переменные для соединения с базой находятся в файле *group_vars/servers/all* 

Замените значения переменных на свои.


Пример:
```
DB_POSTGRES: "192.168.0.243"
REDMINE_DB_PORT: "5432"
REDMINE_DB_USERNAME: redmine
```


Пароль к БД задается при установке / переустановке и хранится в файле group_vars/servers/vault.yml.

!По заданию было в webservers, однако, подготавливаю БД самостоятельно, поэтому при создании контейнера задаю имя пользователя и пароль, в связи с этим секрет сделал доступным для servers


### ПОДГОТОВКА
Установка зависимостей, пароль от БД, API ключ от Data Dog
```bash
make ansible-prep
```


### УСТАНОВКА

```bash
make ansible-redmine-install
```


### ПЕРЕУСТАНОВКА
**ВНИМАНИЕ! При переустановке происходит полное удаление БД, всех контейнеров. Задается новый пароль от БД**

```bash
make ansible-redmine-reset
```


### РЕСТАРТ REDMINE 
Рестарт REDMINE может осуществляться для применения конфигурации при изменении переменных окружения

```bash
make ansible-redmine-restart
```

### Задать пароль доступа к БД
```bash
make ansible-redmine-pwd
make ansible-redmine-restart
```


### Рестарт Data Dog при изменении конфигурации
```bash
make ansible-restart-dd
```

### БД PostgreSQL (env: DB_POSTGRES)

Каталог БД и конфигурацию монтируются по пути */var/pgdata*




---
