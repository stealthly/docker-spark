#!/bin/sh
JAR_PATH=$1
CLASS=$2
ZK_CONNECT=$3
GROUP=$4
TOPIC=$5
NUM_THREADS=$6
$SPARK_HOME/bin/spark-submit --master local[4] --class $CLASS $JAR_PATH $ZK_CONNECT $GROUP $TOPIC $NUM_THREADS