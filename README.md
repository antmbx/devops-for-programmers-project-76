### Hexlet tests and linter status:
[![Actions Status](https://github.com/antmbx/devops-for-programmers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/antmbx/devops-for-programmers-project-76/actions)


This is a simple application REDMINE

**path to Example:** 
- HTTPS: https://hexlet.azxs.ru/
- HTTP: http://hexlet.azxs.ru/


## Описание


### Переменные

Переменные для соединения с базой находятся в файле *group_vars/servers* 

Замените значения переменных на свои.


Пример:
```
DB_POSTGRES: "192.168.0.243"
REDMINE_DB_PORT: "5432"
REDMINE_DB_USERNAME: redmine
REDMINE_DB_DATABASE: redmine_db
```


Пароль к БД задается при установке / переустановке и хранится в файле group_vars/servers/vault.yml.
!По заданию было в webservers, однако, подготавливаю БД самостоятельно, поэтому при создании контейнера задаю имя пользователя и пароль, в связи с этим секрет сделал доступным для servers


### ПОДГОТОВКА
Установка зависимостей
```bash
make ansible-ex
```


### УСТАНОВКА

```bash
make ansible-redmine-install
```


### ПЕРЕУСТАНОВКА
**ВНИМАНИЕ! При переустановке происходит полное удаление БД, всех контейнеров.**

```bash
make ansible-redmine-reinstall
```


### РЕСТАРТ REDMINE 
Рестарт REDMINE может осуществляться для применения конфигурации при изменении переменных окружения

```bash
make ansible-redmine-restart
```

### БД PostgreSQL (env: DB_POSTGRES)

Каталог БД и конфигурацию монтируются по пути */var/pgdata*




---
