FROM docker-xvfb:buster-slim
RUN apt-get update -y \
  && apt-get install --no-install-recommends -y mesa-utils \
  && rm -rf /var/lib/apt/lists/*
CMD glxgears
