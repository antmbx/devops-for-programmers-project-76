#!/bin/bash
echo "INPUT API KEY DataDog"
read apikey
echo "DATADOG_API_KEY: ${apikey}" > group_vars/webservers/vault.yml
