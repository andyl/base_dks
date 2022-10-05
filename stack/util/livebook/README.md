# DKS Livebook 

## Livebook Reference 

| Link                 | Description       |
|----------------------|-------------------|
| [livebook.dev][site] | Livebook Overview |

[site]: https://livebook.dev 

## Organization 

Livebook markdown files are stored in repo at `~/util/livebooks`, auto-synced.

## Running Standalone

```
alias lbsd='cd ~/util/livebooks && docker run -p 8080:8080 -p 8081:8081 -d --restart unless-stopped --pull always -u
 $(id -u):$(id -g) -v $(pwd):/data -e LIVEBOOK_PASSWORD="123456789012" livebook/livebook'
```

## Setup 

TBD
