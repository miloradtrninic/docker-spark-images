#!/bin/bash
SPARK_IMAGE_TAG=2.4.0-hadoop2.7
set -e

docker build -t aggregation/spark-base:${SPARK_IMAGE_TAG} --build-arg SPARK_IMAGE_TAG=$SPARK_IMAGE_TAG ./docker/base
docker build -t aggregation/spark-master:${SPARK_IMAGE_TAG} --build-arg SPARK_IMAGE_TAG=$SPARK_IMAGE_TAG ./docker/spark-master
docker build -t aggregation/spark-worker:${SPARK_IMAGE_TAG} --build-arg SPARK_IMAGE_TAG=$SPARK_IMAGE_TAG ./docker/spark-worker
docker build -t aggregation/spark-submit:${SPARK_IMAGE_TAG} --build-arg SPARK_IMAGE_TAG=$SPARK_IMAGE_TAG ./docker/spark-submit
