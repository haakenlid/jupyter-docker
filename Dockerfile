FROM python:3.6-stretch
MAINTAINER haakenlid
COPY ./install-jupyter.sh ./
RUN ./install-jupyter.sh && rm ./install-jupyter.sh
