#!/bin/bash

# starts a jupyter notebook server
exec jupyter-notebook \
  --notebook-dir=/var/notebooks \
  --NotebookApp.token='' \
  --NotebookApp.password='' \
  --no-browser \
  --ip=0.0.0.0

