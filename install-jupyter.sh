#!/bin/bash

# globally install jupyter
pip install \
  pillow\
  jupyterlab \
  ipywidgets \
  tqdm \
  numpy \
  opencv-python-headless 

# install vim bindings 
jupyter labextension install jupyterlab_vim

