config-redis
============

缓存系统redis配置

1、创建linux用户redis
---
	useradd redis
2、从git下载配置
---
	cd /home/redis
	git clone https://仓库地址
	git checkout origin/相应的分支
3、运行初始化配置
---
	chmod a+x *
	./init.sh
4、启动
---
	./startup.sh
	
	
文件说明
---
init.sh:初始化配置<br/>
create.sh:创建集群
