#!/bin/bash

# starts a jupyter notebook server
exec jupyter-notebook --ip=0.0.0.0 --notebook-dir=/var/notebooks --NotebookApp.token='' --NotebookApp.password='' --no-browser
