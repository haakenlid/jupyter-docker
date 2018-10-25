FROM python:3.6-stretch
MAINTAINER haakenlid
COPY *.sh ./
RUN ./install-jupyter.sh && rm ./install-jupyter.sh
