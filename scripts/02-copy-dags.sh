#!/usr/bin/env bash
rm -rf ~/airflow/dags
mkdir ~/airflow/dags
cp ./../dags/*.py ~/airflow/dags/

airflow list_dags