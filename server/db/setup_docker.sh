#!/bin/bash

set -eu

cd `dirname $0`

echo 'DROP DATABASE IF EXISTS `emoji`' | mysql -h mysql -uroot -proot
echo 'CREATE DATABASE `emoji`'         | mysql -h mysql -uroot -proot
cat table.sql                          | mysql -h mysql -uroot -proot emoji