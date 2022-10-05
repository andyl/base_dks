# DKS SVC/Grafana

## Reference 

| Link                | Description     |
|---------------------|-----------------|
| [Docker Hub][hub]   | Background Info |
| [Install Docs][doc] | Install Docs    |

[hub]: https://hub.docker.com/r/grafana/grafana
[doc]: https://grafana.com/docs/grafana/v9.0/setup-grafana/installation/docker/

## Volumes 

| Host                                 | Container                   | Purpose                |
|--------------------------------------|-----------------------------|------------------------|

## Ports

| Port | Purpose       | App     |
|------|---------------|---------|
| 3000 | Web Interface | Browser |

## Config 

Default Grafana [config file][confdir] is on GitHub.

Here are the docs on how to [configure Grafana][confdoc].

[confdir]: https://github.com/grafana/grafana/tree/main/conf
[confdoc]: https://grafana.com/docs/grafana/latest/setup-grafana/configure-grafana/

## Starting with Docker Run 

```
docker run -name grafana \
       -name grafana 
       -p 3000:3000 
       grafana/grafana-oss 
```

## Starting with Docker Compose 

```
docker compose pull
docker compose up 
```

## Grafana Web 

    http://localhost:3000 

default credentials are `admin/admin`
