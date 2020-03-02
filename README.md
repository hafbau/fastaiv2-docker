fastai v2 Dockerfile
===

### Build from this repo

- `git clone`
- `cd fastaiv2-docker`
- `docker image build -t fastaiv2-docker:1.0.0 .`


### Run the container

`docker container run --publish 8000:8888 --name fv fastaiv2-docker:1.0.0`

Enjoy and please pull request!