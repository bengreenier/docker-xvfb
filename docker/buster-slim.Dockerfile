FROM debian:buster-slim
WORKDIR /usr/bin
RUN apt-get update -y \
  && apt-get install --no-install-recommends -y xvfb \
  && rm -rf /var/lib/apt/lists/*
COPY xvfb-startup.sh .
RUN sed -i 's/\r$//' xvfb-startup.sh
ARG RESOLUTION="1920x1080x24"
ENV XVFB_RES="${RESOLUTION}"
ENTRYPOINT ["/bin/bash", "xvfb-startup.sh"]
