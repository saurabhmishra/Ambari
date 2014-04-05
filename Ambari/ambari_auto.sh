echo 'Ambari blueprint registering'

#curl http://c6405:8999

curl -u 'admin:admin' -H "X-Requested-By:ambari" -i -X POST -d '{ "configurations" : [{"hdfs-site" : {"dfs.namenode.name.dir" : "/hadoop/nn"}}],"host_groups" : [{"name" : "single-host","components" : [{ "name" : "NAMENODE" },{ "name" : "SECONDARY_NAMENODE" },{ "name" : "DATANODE" },{ "name" : "HDFS_CLIENT" },{ "name" : "RESOURCEMANAGER" },{ "name" : "NODEMANAGER" },{ "name" : "YARN_CLIENT" },{ "name" : "HISTORYSERVER" },{ "name" : "MAPREDUCE2_CLIENT" },{ "name" : "MAPREDUCE2_CLIENT" },{ "name" : "ZOOKEEPER_SERVER" },{ "name" : "ZOOKEEPER_CLIENT" },{ "name" : "GANGLIA_SERVER" },{ "name" : "NAGIOS_SERVER" },{ "name" : "GANGLIA_MONITOR" }],"cardinality" : "1"}],"Blueprints" : {"blueprint_name" : "single-node-hdfs-yarn","stack_name" : "HDP","stack_version" : "2.0"}}' http://`hostname -f`:8999/api/v1/blueprints/single-node-hdfs-yarn

echo 'Ambari cluster Installation'

curl -u 'admin:admin' -H "X-Requested-By:ambari" -i -X POST -d "{\"blueprint\" : \"single-node-hdfs-yarn\",\"host-groups\" :[{\"name\":\"single-host\",\"hosts\":[{\"fqdn\" : \"`hostname -f`\"}]}]}" http://`hostname -f`:8999/api/v1/clusters/single-node-hdfs-yarn

echo 'Ambari Development VM has been set up! Enjoy!'
