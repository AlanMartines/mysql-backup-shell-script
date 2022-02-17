# Script de backup de banco de dados Mysql

#### Set execute permission

```sh
chmod +x /opt/scripts/<file_name>.sh
```

#### Now Schedule The Script In Crontab

```sh
0 0 * * * /bin/sh /opt/scripts/<file_name>.sh
```
or

```sh
0 0 * * * /bin/bash /opt/scripts/<file_name>.sh
```
