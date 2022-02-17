#!/bin/bash

#################### SCRIPT PARA BACKUP MYSQL ####################

# Definindo parametros do sistema
echo " -- Definindo parametros do sistema ..."
DATE=`date +%Y-%m-%d`
MYSQLDUMP=/usr/bin/mysqldump
BACKUP_DIR=/backup
BACKUP_NAME=mysql-$DATE.sql
BACKUP_TAR=mysql-$DATE.tar

#Gerando arquivo sql
echo " -- Gerando Backup da base de dados em $BACKUP_DIR/$BACKUP_NAME ..."
$MYSQLDUMP NOMDABASE-u USUARIO -SENHA > $BACKUP_DIR/$BACKUP_NAME

# Compactando arquivo em tar
echo " -- Compactando arquivo em tar ..."
tar -cf $BACKUP_DIR/$BACKUP_TAR -C $BACKUP_DIR $BACKUP_NAME

# Excluindo arquivos desnecessarios
echo " -- Excluindo arquivos desnecessarios ..."
rm -rf $BACKUP_DIR/$BACKUP_NAME

cd $BACKUP_DIR || exit 1
for file in mysql*tar
do
[ $file = $BACKUP_TAR ] && continue
gzip $file
done
