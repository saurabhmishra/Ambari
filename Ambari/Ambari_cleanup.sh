#!/bin/bash

yum -y remove bigtop* sqoop.noarch lzo-devel.x86_64 hadoop-libhdfs.x86_64 rrdtool.x86_64 hbase.noarch pig.noarch,lzo.x86_64 ambari-log4j.noarch oozie.noarch oozie-client.noarch gweb.noarch snappy-devel.x86_64 hcatalog.noarch python-rrdtool.x86_64 nagios.x86_64 webhcat-tar-pig.noarch snappy.x86_64 libconfuse.x86_64 webhcat-tar-hive.noarch ganglia-gmetad.x86_64 extjs.noarch hive.noarch hadoop-lzo.x86_64 hadoop-lzo-native.x86_64 hadoop-native.x86_64 hadoop-pipes.x86_64 nagios-plugins.x86_64 hadoop.x86_64 zookeeper.noarch mysql-libs.x86_64 mysql-connector-java.noarch mysql-server.x86_64 hadoop-sbin.x86_64 ganglia-gmond.x86_64 libganglia.x86_64 perl-rrdtool.x86_64
yum -y remove ambari-server ambari-agent ambari-log4j hdp_mon_ganglia_addon  hdp_mon_nagios_addon
yum list installed | grep HDP
yum list installed | grep HDP-UTILS

rm -rf /usr/lib/hadoop/ /tmp/hadoop-hdfs /var/run/webhcat /var/run/hadoop-yarn /var/run/hadoop-mapreduce /var/log/webhcat /var/log/hadoop-yarn /var/log/hadoop-mapreduce /var/lib/hadoop-hdfs
rm -rf /etc/hadoop /etc/hbase /etc/hcatalog /etc/hive /etc/ganglia /etc/nagios /etc/oozie /etc/sqoop /etc/zookeeper /var/run/hadoop /var/run/hbase /var/run/hive /var/run/ganglia /var/run/nagios /var/run/oozie /var/log/hadoop /var/log/hbase /var/log/hive /var/log/nagios /var/log/oozie /var/log/zookeeper /usr/lib/hbase /usr/lib/hcatalog /usr/lib/hive /usr/lib/oozie /usr/lib/sqoop /usr/lib/zookeeper /var/lib/hive /var/lib/ganglia /var/lib/oozie /var/lib/zookeeper /var/tmp/oozie /tmp/hive /tmp/nagios /tmp/ambari-qa /tmp/sqoop-ambari-qa /var/nagios /hadoop/oozie /hadoop/zookeeper /hadoop/mapred /hadoop/hdfs /tmp/hadoop-hive /tmp/hadoop-nagios /tmp/hadoop-hcat /tmp/hadoop-ambari-qa /tmp/hsperfdata_hbase /tmp/hsperfdata_hive /tmp/hsperfdata_nagios /tmp/hsperfdata_oozie /tmp/hsperfdata_zookeeper /tmp/hsperfdata_mapred /tmp/hsperfdata_hdfs /tmp/hsperfdata_hcat /tmp/hsperfdata_ambari-qa
rm -rf /usr/sbin/ambari-server /usr/lib/ambari-server /var/run/ambari-server /var/log/ambari-server /var/lib/ambari-server /etc/rc.d/init.d/ambari-server /etc/ambari-server
rm -rf /usr/sbin/ambari-agent /usr/lib/ambari-agent /var/run/ambari-agent /var/log/ambari-agent /var/lib/ambari-agent /etc/rc.d/init.d/ambari-agent /etc/ambari-agent
rm -f /etc/yum.repos.d/ambari.repo /etc/yum.repos.d/HDP.repo
rm -rf /etc/ganglia/conf.d/*
rm -rf /usr/lib64/ganglia/*
