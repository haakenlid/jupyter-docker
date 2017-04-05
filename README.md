# jupyter notebooks
Docker image for running opencv3 and python 3.6 and jupyter
Includes jupyter notebooks with vim bindings.

To run do this

    docker build . --tag jupyter
    docker run -ti -p 8888:8888 -v ./notebooks:/var/notebooks jupyter

open browser at `localhost:8888`
