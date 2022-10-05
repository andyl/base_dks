# dks_registry

Docker registry service.

This is a private repo.

## References

https://code-maze.com/docker-hub-vs-creating-docker-registry/

https://docs.docker.com/registry/configuration/

## Usage

    $> dkc up                            # start stack
    $> dklz                              # start lazydocker
    $> curl localhost:55010/v2/_catalog  # query the catalog
