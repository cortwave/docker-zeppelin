Docker container for zeppelin
=================================

This repository contains a set of scripts and configuration files to run a [Apache Zeppelin(incubating)](https://zeppelin.incubator.apache.org/) from [Docker](https://www.docker.io/) containers.

To run zeppelin from script, execute:
```
./start-zeppelin-linked.sh
```

It will run and link your zeppelin instance with spark_master container. You can create spark cluster from [image](https://registry.hub.docker.com/u/cortwave/docker-spark/).

To run zeppelin manually:

Pull container:
```
	docker pull cortwave/docker-zeppelin
```

Run container: 
```
	docker run -i -t -p 8080:8080 -p 8081:8081 cortwave/docker-zeppelin /bin/bash
```

For all zeppelin realted documentation, please see zeppelin [official documentation](https://zeppelin.incubator.apache.org/docs/index.html).
