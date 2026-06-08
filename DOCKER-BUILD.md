To build:

```shell
docker run -it --rm -v .:/workspaces -v ".fhir:/root/.fhir" ghcr.io/bonfhir/ig-toolbox sushi
docker run -it --rm -v .:/workspaces -v ".fhir:/root/.fhir" ghcr.io/bonfhir/ig-toolbox ./_updatePublisher.sh -y
docker run -it --rm -v .:/workspaces -v ".fhir:/root/.fhir" -w /workspaces ghcr.io/bonfhir/ig-toolbox bash ./_genonce.sh
```
