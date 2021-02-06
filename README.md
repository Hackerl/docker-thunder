# Thunder docker image
Run thunder in docker container, access by noVNC.
## Build
```shell
docker build -t docker-thunder .
```
## Run
```shell
docker run --rm -p 5800:5800 -p 5900:5900 docker-thunder
```
Open "http://host-ip:5800" in browser.
