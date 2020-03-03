fastai v2 Dockerfile
===

### Run from Docker Hub

`docker run --publish 8000:8888 --name fv fastaiv2-docker`

This launches `jupyter` notebook into the source code.

If you don't want this behaviour, run it with bash instead:

`docker run -i -t fastaiv2 /bin/bash`

### Build locally

- `git clone`
- `cd fastaiv2-docker`
- `docker image build -t fastaiv2-docker:latest .`


This launches `jupyter` notebook into the source code.


#### Run the container

`docker container run --publish 8000:8888 --name fv fastaiv2-docker:latest`

Enjoy and please pull request!