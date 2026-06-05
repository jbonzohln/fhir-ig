To build:

```shell
docker run -it --rm -v .:/workspaces -v ".fhir:/root/.fhir" ghcr.io/bonfhir/ig-toolbox sushi
docker run -it --rm -v .:/workspaces -v ".fhir:/root/.fhir" ghcr.io/bonfhir/ig-toolbox ./_updatePublisher.sh -y
docker run -it --rm -v .:/workspaces -v ".fhir:/root/.fhir" ghcr.io/bonfhir/ig-toolbox ./_genonce.sh
```

This uses the docker image as described [here](https://bonfhir.dev/docs/guides/ig-toolbox).

Github actions build on push.
