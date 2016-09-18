#!/usr/bin/env bash
export SPARK_LOCAL_IP=`awk 'END {print $1}' /etc/hosts`

sed '1d' /etc/hosts > tmpHosts
cat tmpHosts > /etc/hosts
rm tmpHosts

export MASTER=spark://${SPARK_MASTER_PORT_7077_TCP_ADDR}:${SPARK_MASTER_ENV_SPARK_MASTER_PORT}
cd zeppelin-0.6.1-bin-all/
./bin/zeppelin-daemon.sh start
/bin/bash
