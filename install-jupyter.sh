#!/bin/bash

# install jupyter itself
pip install jupyter
# Create required directory in case (optional)
mkdir -p $(jupyter --data-dir)/nbextensions
cd $(jupyter --data-dir)/nbextensions
# Clone the vim bindings repo
git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding
# Activate the extension
jupyter nbextension enable vim_binding/vim_binding
