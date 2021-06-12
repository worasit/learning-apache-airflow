#!/usr/bin/env bash

mkdir airflow
export AIRFLOW_HOME=$PWD/airflow

pip install "SQLAlchemy==1.3.23"
pip install "Flask-SQLAlchemy==2.4.4"
pip install "apache-airflow==1.10.15"

airflow db init
airflow webserver --port 8080 --daemon
airflow scheduler --daemon