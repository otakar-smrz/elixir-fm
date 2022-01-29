# This is full docker container with haskell libraries and elixir build on docker included
# It ensures best compatibility with the docker, but it is an inefficient way since it 
# takes long time (approx 20min) to build and the final image takes considerable amount of space 
# (about 4.5GB).

FROM python:2

WORKDIR /usr/src/app

COPY . .

# Install Haskell and build ElixirFM
## Install Haskell
RUN apt-get update && apt-get -y install cabal-install

## Build ElixirFM
WORKDIR /usr/src/app/Haskell/ElixirFM

RUN cabal update
RUN cabal install

## Create symlinks to be able to directly run "elixir"
RUN cp -s /root/.cabal/bin/elixir /usr/bin/elixir \
    cp -s /root/.cabal/bin/encode /usr/bin/encode \
    cp -s /root/.cabal/bin/decode /usr/bin/decode

# Install python elixir
WORKDIR /usr/src/app/Python/ElixirFM

RUN python setup.py install

# Test
# RUN python ./test-example/test.py

# CMD [ "echo", "done" ]
# CMD [ "ls", "-a" ]
# CMD [ "python", "./test-example/test.py" ]