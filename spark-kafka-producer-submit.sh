#!/bin/sh
JAR_PATH=$1
CLASS=$2
BROKER_LIST=$3
TOPIC=$4
$SPARK_HOME/bin/spark-submit.sh --master local[4] --class $CLASS $JAR_PATH $BROKER_LIST $TOPIC