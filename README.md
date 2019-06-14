# docker-xvfb

Dockerfiles for running headless x11 apps 📦🤕✨

## How to use this image 

### Create a `Dockerfile` in your project

```
FROM docker-xvfb:stable
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
+ `buster`
+ `buster-slim`

## License

MIT