#!/usr/bin/env bash
export AIRFLOW_HOME=~/airflow
AIRFLOW_VERSION=1.10.15
PYTHON_VERSION="$(python3 --version | cut -d " " -f 2 | cut -d "." -f 1-2)"
# For example: 3.6
CONSTRAINT_URL="https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-${PYTHON_VERSION}.txt"
# For example: https://raw.githubusercontent.com/apache/airflow/constraints-1.10.14/constraints-3.6.txt
#pip install "apache-airflow==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"
pip install "apache-airflow==${AIRFLOW_VERSION}"

airflow initdb

airflow webserver --port 8080 --daemon

airflow scheduler --daemon