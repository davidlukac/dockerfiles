# ELASTICSEARCH 2.4

```Dockerfile
FROM quay.io/continuouspipe/elasticsearch2.4:stable
```

## How to build
```bash
docker build --pull --tag quay.io/continuouspipe/elasticsearch2.4:latest --rm .
docker push
```

## How to use

As this is based on the library Elasticsearch image, see their README on [The Docker Hub](https://hub.docker.com/_/elasticsearch/).
