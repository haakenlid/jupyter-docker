#!/bin/bash
exec jupyter-notebook --ip=0.0.0.0 --notebook-dir=/var/notebooks --NotebookApp.token='' --NotebookApp.password='' --no-browser
