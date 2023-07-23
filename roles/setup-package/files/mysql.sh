#! /bin/bash
systemctl start mysql
mysql -e "Alter user 'root'@'localhost' Identified by 'kali'"
mysql -u root -pkali -e "create database if not exists training;use training;
create table users (uid varchar(10), name varchar(15), age int);
insert into users values('1','admin',30),('2','sean',20),('3','alice',25);

create table 用户 (uid varchar(10), 名字 varchar(15), 年龄 int);
insert into 用户 values('1','管理员',30),('2','肖恩',20),('3','爱丽丝',25);" 
mysql -u root -pkali -e "FLUSH PRIVILEGES"
