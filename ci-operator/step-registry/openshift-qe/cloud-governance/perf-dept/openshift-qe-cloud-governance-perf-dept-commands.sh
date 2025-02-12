#!/bin/bash

cat "/secret/perf-dept-creds"  > /tmp/creds.sh
chmod 755 /tmp/creds.sh
source /tmp/creds.sh
export es_host="$(cat /secret/es_host)"
export es_port="$(cat /secret/es_port)"

python3 /usr/local/cloud_governance/main.py

