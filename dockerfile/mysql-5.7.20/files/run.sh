#!/bin/sh

chown -R mysql:mysql /alidata/server/mysql
/etc/init.d/mysqld start
