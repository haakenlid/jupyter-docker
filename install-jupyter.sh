#!/bin/bash
# Install jupyter lab with vim bindings on debian stretch #

# globally install jupyter
python -m pip install --no-cache-dir \
  jupyterlab \
  ipywidgets \
  tqdm \
  matplotlib \
  seaborn \
  numpy \
  pandas \
  pillow \
  opencv-python-headless \
  ;

# install nodejs (required for building jupyterlab extensions)
wget -qO- https://deb.nodesource.com/setup_10.x | bash -
apt-get install nodejs --yes --no-install-recommends

# install jupyterlab extensions
jupyter labextension install \
  jupyterlab_vim \
  @jupyter-widgets/jupyterlab-manager \
  ;

# remove nodejs and extension build artifacts
staging=$(jupyter lab paths | awk -F': *' '/Application/{print $2}')/staging/
apt-get purge nodejs -y
rm -rf "$staging" /var/lib/apt/lists/* /etc/apt/sources.list.d/*
