#!/usr/bin/env bash
cat $AIRFLOW_HOME/airflow-webserver.pid | xargs kill -9
cat $AIRFLOW_HOME/airflow-scheduler.pid | xargs kill -9