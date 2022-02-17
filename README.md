# Script de backup de banco de dados Mysql

#### Set execute permission

```sh
chmod +x /opt/scripts/<file_name>.sh
```

#### Now Schedule The Script In Crontab

0 2 * * * root /backup/mysql-backup.sh
