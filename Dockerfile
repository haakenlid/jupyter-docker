FROM python:3.6-stretch
MAINTAINER haakenlid
EXPOSE 8888
VOLUME /var/notebooks
COPY *.sh ./
RUN groupadd --gid 1000 jupyter &&\
  useradd --uid 1000 --gid 1000 --shell /bin/bash --create-home jupyter
RUN chown jupyter:jupyter /var/notebooks
RUN ./install-jupyter.sh
USER jupyter
ENTRYPOINT ./docker-entrypoint.sh
