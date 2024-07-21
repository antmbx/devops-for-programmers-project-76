### Hexlet tests and linter status:
[![Actions Status](https://github.com/antmbx/devops-for-programmers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/antmbx/devops-for-programmers-project-76/actions)






This is a simple application REDMINE

## Usage


### ENV

in fiile *group_vars/all* replace enviroment for access Redmine to DB

Example:
```
DB_POSTGRES: "192.168.0.243"
REDMINE_DB_PORT: "5432"
REDMINE_DB_USERNAME: redmine
REDMINE_DB_PASSWORD: password
REDMINE_DB_DATABASE: redmine_db
```


### Prepare servers
```bash
make ansible-ex
```


### Install DB postgres & Redmine

```bash
make ansible-redmine-install
```


### REinstall DB postgres & Redmine: Drop DB, all containers and install

```bash
make ansible-redmine-reinstall
```


### Restart-redmine

```bash
make ansible-redmine-restart
```

### PostgreSQL (env: DB_POSTGRES)

db & config dir path */var/pgdata*




---
