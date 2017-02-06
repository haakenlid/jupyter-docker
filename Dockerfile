FROM opencv:3.6
MAINTAINER haakenlid
EXPOSE 8888
VOLUME /var/notebooks

COPY *.sh ./
RUN ./install-jupyter.sh
ENTRYPOINT ./docker-entrypoint.sh
