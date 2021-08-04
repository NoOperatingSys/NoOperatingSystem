# Building noOS
## Requirements
To build noOS, you need the following:

- A linux distro
- Docker

## First Time Building?
For your first build, you'll need to set up the Docker image.

To do that, run the following
```
cd "root of project"
sudo docker build buildenv -t noos-buildenv
```

## Get building!
If your terminal uses "$pwd", do the following
```
sudo docker run --rm -it -v "$pwd":/root/env noos-buildenv
```
if your terminal uses "$PWD", do the following
```
sudo docker run --rm -it -v "$PWD":/root/env noos-buildenv'
```

Now you should be in a docker image's commandline.

All you need to do from here is run `make build-x86_64` in the commandline. This will build the project, and run all needed scripts to build the iso file, which you can run in [RUNNING.md](RUNNING.md)
