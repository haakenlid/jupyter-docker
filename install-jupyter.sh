#!/bin/bash
# Install jupyter lab with vim bindings on debian stretch #

# globally install jupyter
python -m pip install --no-cache-dir \
  jupyterlab \
  pillow\
  tqdm \
  numpy \
  opencv-python-headless 

# install nodejs (required for building jupyterlab extensions)
wget -qO- https://deb.nodesource.com/setup_10.x | bash -
apt-get install nodejs -y 

# install jupyter vim extension
jupyter labextension install jupyterlab_vim

# remove nodejs and extension build artifacts
apt-get purge nodejs -y
cd $(jupyter lab paths | awk -F': ' '/Application/{print $2}')
rm -rf staging /var/lib/apt/lists/*
