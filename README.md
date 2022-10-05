# BASE_DKS / Docker Stacks 

Compose files for various environments and applications

## Roadmap 

- [ ] 2022 Oct - Grafana in Container 

## Stacks 

- [ ] TSDB  | Influx1
- [ ] TSDB  | Prometheus
- [ ] TSDB  | Influx2
- [ ] TSDB  | Timescale

- [ ] LOGS  | Loki

- [ ] TRACE | Tempo

- [ ] DB    | Postgres14

- [ ] SVC   | Grafana
- [ ] SVC   | Telegraf
- [ ] SVC   | Plausible HQ

- [ ] UTIL  | HelloWorld
- [ ] UTIL  | Livebook

- [ ] Apps  | Domo
- [ ] Apps  | Feedex
- [ ] Apps  | Ledgerex

## Reference 

| Link                      | Description     |
|---------------------------|-----------------|
| [Docker compose][compose] | Background Info |

[compose]: https://docs.docker.com/compose/

## Docker Commands

Aliases: 
- `dk<tab>`
- `dkc<tab>`
- `lazydocker - lzd`

| Command                             | Description               |
|-------------------------------------|---------------------------|
| docker image prune -a               | remove unused images      |
| docker container prune              | remove stopped containers |
| docker volume prune                 | remove unused volumes     |
| docker network prune                | remove unused networks    |
| docker system prune -a -f --volumes | remove unused everything! |

## Volume Scheme 

| Data   | Type | Scheme    | Path                                       |
|--------|------|-----------|--------------------------------------------|
| Config | Text | ReadOnly  | ~/dks/<repo>_dks/<type>/<stack>/cfg/<svc>  |
| Data   | Blob | ReadWrite | ~/var/data/dks/<host>/<type>/<stack>/<svc> |

Config Volumes 
- config files with settings use by all instances of a stack 
- read-only, texttual data  
- can use environment variables for customization 
- copy to a separate stack if radical config changes are needed 
- sync/backup using git 

Data Volumes 
- host-specific blobs, database records, images, etc.
- read-write data  
- sync/backup using rsync, unison, etc.

note: <host>/<stack> combination must be unique across all repos.

## 2022 Oct 03 Mon

Native
- [x] Fix Ansible 
- [x] Install Influx 1.8 
- [x] Configure Influx 1.8 (create databases)
- [x] Install Grafana 
- [x] Install Telegraf 
- [x] Configure Grafana 

## 2022 Oct 04 Tue

- [x] Reorganize repos (base_dks and code_dks) 
- [x] Create Volume Scheme 

## Next Steps 
