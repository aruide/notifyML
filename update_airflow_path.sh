#!/bin/bash

# Chemin vers airflow.cfg
AIRFLOW_CFG="$(pwd)/airflow/airflow.cfg"

# Remplace la ligne AIRFLOW_PATH par la valeur du répertoire courant
# Le regex cherche "AIRFLOW_PATH =" et remplace tout ce qui suit
sed -i.bak "s|^\(AIRFLOW_PATH *= *\).*|\1$(pwd)|" "$AIRFLOW_CFG"

echo "AIRFLOW_PATH mis à jour dans $AIRFLOW_CFG vers $(pwd)"
echo "Une sauvegarde a été créée : $AIRFLOW_CFG.bak"
