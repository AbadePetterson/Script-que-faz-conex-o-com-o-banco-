#!/bin/bash

# Defina as informações de acesso do banco de dados
DB_HOST="localhost"
DB_PORT="5432"
DB_NAME="####"
DB_USER="#####"
DB_PASSWORD="#####"

# Defina a instrução SQL que você deseja executar
SQL_STATEMENT="select sei la o que"

# Use o comando psql para se conectar ao banco de dados e executar a instrução SQL
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -p $DB_PORT -d $DB_NAME -U $DB_USER -c "$SQL_STATEMENT"
# crie um arquivo de log para gravar as vezs que o script executa com sucesso
echo "Executado com sucesso em $(date +"%Y-%m-%d %H:%M:%S")" >> /home/lugar/Script.log
