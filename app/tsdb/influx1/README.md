# DKS TSDB/Influx1

## Reference 

| Link              | Description            |
|-------------------|------------------------|
| [Docker Hub][hub] | Background Info        |
| [InfluxQL][iql]   | Influx1 Query Language |

[hub]: https://hub.docker.com/_/influxdb 
[iql]: https://docs.influxdata.com/influxdb/v1.8/query_language/

## Volumes 

| Host                                 | Container                   | Purpose                |
|--------------------------------------|-----------------------------|------------------------|
| $PWD/conf/influxdb.conf              | /etc/influxdb/influxdb.conf | Database Configuration |
| ~/var/data/dks/$SYSNAME/tsdb/influx1 | /var/lib/influxdb           | Datastore              |

## Ports 

| Port | Purpose           | App              |
|------|-------------------|------------------|
| 8083 | Admin Interface   | Superuser Access |
| 8086 | Restful Interface | Influx CLI       |
| 8088 | Web Interface     | Browser          |
| 8089 | UDP Interface     | Telegraf         |

## Config 

To generate the default config, run this command...
```
docker run --rm influxdb:1.8 influxd help      # see options 
docker run --rm influxdb:1.8 influxd config    # print default config
```

## Starting with Docker Run 

```
bin/setup 
docker run -name influx1 \
       -v $PWD/conf/influxdb.conf:/etc/influxdb/influxdb.conf \
       -v ~/var/data/dks/$SYSNAME/tsdb/influx1:/var/lib/influxdb \
       -p 8083:8083 \ 
       -p 8086:8086 \ 
       -p 8088:8088 \ 
       -p 8089:8089 \ 
       influxdb:1.8
```

## Starting with Docker Compose 

```
docker compose pull
docker compose up 
```

## Influx Web 

http://localhost:8083 

## Influx CLI 

Once a server is running: 

    bin/influx 

At the influx prompt >

    help
    show databases 
    create database mydb
