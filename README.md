# docker-debug-bundler
docker image for debugging bundler of leihs legacy rails application

## Usage

```bash
git clone https://github.com/nimaai/docker-debug-bundler.git
cd docker-debug-bundler
docker build -t docker-debug-bundler .
docker run -it docker-debug-bundler
# if one wants the container to be automatically deleted after exiting the docker shell
# docker run -it --rm docker-debug-bundler
```
