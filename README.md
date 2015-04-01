cluster-redis
=============

缓存系统redis集群配置

reids集群采用双master互为slave的方式。每台linux服务器运行4个redis实例，由2个实例担任reids master角色，另2个实例担任reids slave。失效检测和切换由redis完成。

安装gcc tcl ruby
yum install gcc tcl ruby -y

安装ruby的redis组件
gem install redis

下载redis3.0以上版本
解压到/home/cluster-redis/reids目录

编译安装
make && make install

运行init.sh初始化集群

运行startup.sh启动实例

运行create.sh创建集群

运行shutdown.sh停止实例
