#!/bin/bash
echo "INPUT PASSWORD DB"
read pwd
echo "REDMINE_DB_PASSWORD: ${pwd}" > group_vars/servers/vault.yml
