#!/usr/bin/env bash
# backfill does not allow to execute on future date (current is 2021-03-28), it would throw error DeadLock.
airflow clear my-tutorial -s 2021-03-28 -e 2021-03-31