# DKS TSDB/Prometheus

## Reference 

| Link                      | Description     |
|---------------------------|-----------------|
| [Docker Hub][hub]         | Background Info |
| [Prometheus Website][web] | Database Info   |
| [Prometheus Github][git]  | Source Code     |

[hub]: https://hub.docker.com/r/prom/prometheus
[web]: https://prometheus.io 
[git]: https://github.com/prometheus/prometheus

## Starting with Docker Run 

```
docker run -p 8086:8086 -v influxdb:/var/lib/influxdb influxdb:2.4 
```

## Starting with Docker Compose 

```
docker compose pull
docker compose up 
```

