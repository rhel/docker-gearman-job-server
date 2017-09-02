FROM ubuntu:16.04
MAINTAINER Artyom Nosov <chip@unixstyle.ru>
RUN \
       apt-get update \
    && apt-get -y install gearman-job-server \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER gearman
EXPOSE 4730

ENTRYPOINT [ "gearmand", "-l", "stderr" ]
