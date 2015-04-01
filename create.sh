#!/bin/bash

echo "创建redis集群..."
redis_config_base=$(cd `dirname $0`; pwd)
. $redis_config_base/redis-cluster.conf

for ((i=0;i<${redis_node_count};i++)); do
    node_port=${redis_port}${i}
    for ((j=0;j<${#redis_cluster_hosts[*]};j++)); do
        redis_cluster_list=${redis_cluster_list}${redis_cluster_hosts[j]}":"${node_port}" "
    done
done

$redis_worker_base/src/redis-trib.rb create --replicas 1 ${redis_cluster_list}
