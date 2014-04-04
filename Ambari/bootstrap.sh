#!/usr/bin/env bash

setsebool -P httpd_can_network_connect on
cp /vagrant/hosts /etc/hosts
cp /vagrant/resolv.conf /etc/resolv.conf
yum -q install ntpd -y
service iptables stop
service ip6tables stop
wget -q http://public-repo-1.hortonworks.com/ambari/centos6/1.x/updates/1.5.0/ambari.repo -O /etc/yum.repos.d/ambari.repo
yum -q clean all
yum -q repolist
yum -q -y install ambari-server ambari-agent
/etc/init.d/ambari-server setup -s
wget --no-check-certificate https://raw.githubusercontent.com/saurabhmishra/Ambari/master/Ambari/ambari.properties  -O /etc/ambari-server/conf/ambari.properties
/etc/init.d/ambari-server start
/etc/init.d/ambari-agent start
sleep 20
wget --no-check-certificate https://raw.githubusercontent.com/saurabhmishra/Ambari/master/Ambari/ambari_auto.sh -O /tmp/ambari_auto.sh
sh /tmp/ambari_auto.sh
