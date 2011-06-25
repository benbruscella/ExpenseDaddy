#!/bin/sh

DATABASE=/var/www/www.expensedaddy.com/shared/backups/expensedaddy-mysql-backup-`date +\%A`-hour-`date +\%H`.bak
echo $DATABASE
LATEST=/var/www/www.expensedaddy.com/shared/backups/expensedaddy-latest.sql
echo $LATEST

mysqldump -uexpensedaddy -pexpensedaddy! expensedaddy_production > $DATABASE
rm -f $LATEST
cp $DATABASE $LATEST
