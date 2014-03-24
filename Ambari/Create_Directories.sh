#!/bin/bash

#Clear Zookeeper Data Directories on all zookeeper servers

#for example:

rm -rf /hadoop/data1/zookeeper/*

#Sudo to hdfs user and run following commands

#Create Hbase Directories

hdfs dfs -mkdir -p /apps/hbase/data
hdfs dfs -mkdir -p /apps/hbase/staging
hdfs dfs -chown -R hbase /apps/hbase
hdfs dfs -chmod 755 /apps/hbase/data
hdfs dfs -chmod 755 /apps/hbase/staging
hdfs dfs -chown hbase:hdfs /apps/hbase/data
hdfs dfs -chown hbase:hdfs /apps/hbase/staging

#Create Hive Directories

hdfs dfs -mkdir -p /apps/hive/warehouse
hdfs dfs -chown hive:hdfs /apps/hive/warehouse
hdfs dfs -chmod 777 /apps/hive/warehouse

hdfs dfs -mkdir -p /apps/webhcat
hdfs dfs -chown hcat:hdfs /apps/webhcat
hdfs dfs -chmod 755 /apps/webhcat

#Create Yarn and History Server Directories

hdfs dfs -mkdir -p /app-logs
hdfs dfs -chown yarn:hadoop /app-logs
hadoop fs -chmod -R 1777 /app-logs 

hdfs dfs -mkdir /mr-history
hdfs dfs -mkdir /mr-history/done
hdfs dfs -mkdir /mr-history/tmp

hdfs dfs -chown -R mapred:hadoop /mr-history
hdfs dfs -chown -R mapred:hadoop /mr-history/done
hdfs dfs -chown -R mapred:hadoop /mr-history/tmp
hdfs dfs -chmod -R 777 /mr-history/tmp

hdfs dfs -mkdir -p /tmp/scratch
hdfs dfs -chown -R hive:hadoop /tmp/scratch
hdfs dfs -chmod -R 777 /tmp/scratch 

#Create User Directories

hdfs dfs -mkdir /user/ambari-qa
hdfs dfs -mkdir /user/hcat
hdfs dfs -mkdir /user/hive
hdfs dfs -mkdir /user/oozie
hdfs dfs -mkdir /user/oozie/share

hdfs dfs -chown ambari-qa /user/ambari-qa
hdfs dfs -chown hcat/user/hcat
hdfs dfs -chown hive:hive /user/hive
hdfs dfs -chown oozie:oozie /user/oozie
hdfs dfs -chown -R oozie:oozie /user/oozie/share

#Create Webhcat and Put jars in hdfs.

hdfs dfs -copyFromLocal /usr/share/HDP-webhcat/pig.tar.gz /apps/webhcat/
hdfs dfs -copyFromLocal /usr/share/HDP-webhcat/hive.tar.gz /apps/webhcat/
hdfs dfs -copyFromLocal /usr/lib/hadoop-mapreduce/hadoop-streaming*.jar /apps/webhcat/


