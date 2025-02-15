# docker-xvfb

[![Build Status](https://dev.azure.com/bengreenier/docker-xvfb/_apis/build/status/bengreenier.docker-xvfb?branchName=master)](https://b3ngr33ni3r.visualstudio.com/docker-xvfb/_build/latest?definitionId=8&branchName=master)

Dockerfiles for running headless x11 apps 📦🤕✨

## How to use this image 

### Create a `Dockerfile` in your project

```
FROM bengreenier/docker-xvfb:stable
# install glxgears
RUN apt-get update -y \
  && apt-get install --no-install-recommends -y mesa-utils \
  && rm -rf /var/lib/apt/lists/*
CMD glxgears
```

You can then build and run the image:

```
docker build . -t my-x11-app
docker run -it --rm --name my-running-app my-x11-app
```

And `glxgears` will run in the virtual x11 space.

## Image Variants

Are based on [their debian variants](https://github.com/debuerreotype/docker-debian-artifacts). We support:

+ `stable`
+ `stable-slim`
+ `stretch`
+ `strech-slim`
+ `jessie`
+ `jessie-slim`
+ `buster`
+ `buster-slim`

## Image Arguments

These images support [build-time variables](https://docs.docker.com/engine/reference/commandline/build/#set-build-time-variables---build-arg) for customization.

+ `RESOLUTION` - Configures the X screen buffer. Default: `1920x1080x24`
+ `XARGS` - Configures X with additional arguments. Default: `""` (no value)

## License

MIT
