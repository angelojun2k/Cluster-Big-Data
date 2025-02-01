#!/bin/bash

# Iniciar o Spark Master
start-master.sh &

# Iniciar o Spark Worker
start-worker.sh spark://spark-master:7077 &

# Iniciar o Jupyter Notebook
jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root --NotebookApp.token='' --NotebookApp.password='' &

