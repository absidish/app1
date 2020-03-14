#!/bin/bash

mysql -u root  --execute="create database ofbiz;";
mysql -u root  --execute="create database ofbizolap;";
mysql -u root  --execute="create database ofbiztenant;";

mysql -u root  --execute="CREATE USER 'ofbiz'@'%' IDENTIFIED BY 'ofbiz';"
mysql -u root  --execute="GRANT ALL PRIVILEGES ON *.* TO 'ofbiz'@'%';"

mysql ofbiz < /opt/ofbiz.sql;
mysql ofbizolap < /opt/ofbizolap.sql;
mysql ofbiztenant < /opt/ofbiztenant.sql;
