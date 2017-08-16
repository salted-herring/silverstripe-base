#!/bin/bash

mysqldump --database ss_silverstripe --add-drop-database > dump.sql
cat dump.sql grant.sql > db.sql
